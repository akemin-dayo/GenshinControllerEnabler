### Repo URL: https://cydia.akemi.ai/ ([Tap here on your device to automatically add the repo!](https://cydia.akemi.ai/add.php))

#### Support me with [Patreon](https://patreon.com/akemin_dayo), [PayPal (`karen@akemi.ai`)](https://paypal.me/akemindayo), or [Cryptocurrency](https://akemi.ai/?page/links#crypto)

(A full list of all available donation methods can be found [here](https://akemi.ai/?page/links#donate).)

Any support is _greatly_ appreciated, but donations are *not* and will *never* be necessary to use my software!

---

# What is Genshin Controller Enabler?

Compatible with iOS 13, 12, 11, 10, and 9. Not required on iOS 14 and above. Open-source on [GitHub](https://github.com/akemin-dayo/GenshinControllerEnabler)!

Genshin Controller Enabler is an _incredibly_ simple tweak that enables Genshin's official native controller support on iOS 13 and below.

What it _actually_ does is simply make Genshin believe your device is running iOS 14.0, by spoofing Genshin's iOS version check (which simply calls the Objective-C method `[[UIDevice currentDevice] systemVersion]`).

[Seriously, that's the only thing in the source code](https://github.com/akemin-dayo/GenshinControllerEnabler/blob/master/GenshinControllerEnabler.xm). (This is probably the simplest tweak I've ever written in my life.)

**That being said, there are some caveats to be aware of:**

1. The Chat button does not work. For more information as to why, please see the section below. (The Chat button is the Touchpad button (PlayStation) or the VIEW button (MFi, Xbox).)
2. **[[nControl](https://repo.packix.com/package/com.nito.ncontrol) on iOS 12 and below only]** PlayStation button prompts do not show on iOS 12 and below. MFi / Xbox button prompts are displayed instead.
3. There is a **non-zero** (but extremely low) ban risk since we're injecting code into the Genshin process. Please make sure that you _fully_ understand that before using this tweak. That being said, the only thing this tweak does is [change the reported iOS version](https://github.com/akemin-dayo/GenshinControllerEnabler/blob/master/GenshinControllerEnabler.xm), with _no_ other modifications, so the ban risk _should_ be extremely low. (Not to mention that Genshin does not even perform jailbreak detection and all the important game logic is server-side anyway…)

※ **Info regarding [nControl](https://repo.packix.com/package/com.nito.ncontrol) version 1.9.1-6:** There is a known bug in the current publicly-available build of nControl (1.9.1-6) that causes the OPTIONS (PlayStation) / MENU (MFi, Xbox) button to not work on iOS 12 and below. I have spoken to the developer of nControl regarding this issue and have confirmed that an update will be made available very soon that will fix this bug.

---

# So… why did miHoYo make such a strange artificial limitation!?

Believe it or not, miHoYo has an _actual_ reason(!!) for limiting Genshin's native controller support to only iOS 14 and above, though it _is_ incredibly minor.

Basically, iOS 13 and below are actually missing a button in their controller support frameworks — specifically, the Touchpad button on a PlayStation controller, or the VIEW button on an MFi / Xbox controller. (For more information, refer to the [Apple Developer documentation](https://developer.apple.com/documentation/gamecontroller?language=objc).)

That being said, the _only_ use this button has in Genshin is solely just to bring up the Chat view, which in my opinion is definitely not critical to the playability of the game at all.

Therefore, simply by spoofing the iOS version, we can enable controller support on iOS versions below 14, albeit with a non-working Chat button!

Funnily enough, there are actually quite a lot of MFi controllers out there that just physically completely lack the VIEW button (they only have a single MENU button), so the same "there is no Chat button" limitation obviously applies to those too, regardless of iOS version! ;P
