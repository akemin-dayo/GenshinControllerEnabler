# Genshin Controller Enabler
###### Enables native controller in Genshin for iOS 13, 12, 11, 10, and 9!

## What is Genshin Controller Enabler?

Genshin Controller Enabler is an _incredibly_ simple tweak that enables Genshin's official native controller support on iOS 13 and below.

What it _actually_ does is simply make Genshin believe your device is running iOS 14.0, by spoofing Genshin's iOS version check (which simply calls the Objective-C method `[[UIDevice currentDevice] systemVersion]`).

[Seriously, that's the only thing in the source code](GenshinControllerEnabler.xm). (This is probably the simplest tweak I've ever written in my life.)

**That being said, there are some caveats to be aware of:**

1. **[iOS 13 and below]** The chat button does not work. (This would be the Touchpad button on a PlayStation controller, or the View button on an Xbox controller.) For more information as to why, please see the section below.
2. **[iOS 12 and below with [nControl](https://repo.packix.com/package/com.nito.ncontrol)]** The "Paimon Menu" cannot be opened when using a controller paired using nControl on iOS 12 and below, because nControl does not map the "MENU" button on those iOS versions for some reason. (I'm not sure why this is the case because as far as I'm aware, the MENU button has been a part of the MFi controller standard since iOS 7…)
3. **[iOS 12 and below with [nControl](https://repo.packix.com/package/com.nito.ncontrol)]** PlayStation controllers will not show PlayStation button prompts on iOS 12 and below. Xbox buttons are displayed instead. This is an iOS limitation and cannot be fixed.
4. There is a **non-zero** (but extremely low) ban risk since we're injecting code into the Genshin process. Please make sure that you _fully_ understand that before using this tweak. That being said, the only thing this tweak does is [change the reported iOS version](GenshinControllerEnabler.xm), with _no_ other modifications, so the ban risk _should_ be extremely low. (Not to mention that Genshin does not even perform jailbreak detection and all the important game logic is server-side anyway…)

---

## So… why did miHoYo make such a strange artificial limitation!?

Believe it or not, miHoYo has an _actual_ reason(!!) for limiting Genshin's native controller support to only iOS 14 and above, though it _is_ incredibly minor.

Basically, iOS 13 and below are actually missing a button in their controller support frameworks — specifically, the Touchpad button on a PlayStation controller, or the View button on an Xbox controller. (For more information, refer to the [Apple Developer documentation](https://developer.apple.com/documentation/gamecontroller?language=objc).)

That being said, the _only_ use this button has in Genshin is solely just to bring up the Chat view, which in my opinion is definitely not critical to the playability of the game at all.

Therefore, simply by spoofing the iOS version, we can enable controller support on iOS versions below 14, albeit with a non-working Chat button!

---

## How do I install Genshin Controller Enabler on my jailbroken iOS device?

Genshin Controller Enabler is available from **Karen's Repo: https://cydia.akemi.ai/** ([Tap here on your device to automatically add the repo!](https://cydia.akemi.ai/add.php))

If you do not see Genshin Controller Enabler listed in Karen's Repo, then that just means you have another repository added that is also hosting a copy of Genshin Controller Enabler under the same package ID.

**_Please_ only ever install the official, unmodified release from Karen's Repo for your own safety!**

By installing third-party modified versions of _any tweak_ like Genshin Controller Enabler, you are putting the security and stability of your iOS device and your personal data at risk.

---

## How do I build Genshin Controller Enabler?

First, make sure you have [Theos](https://github.com/theos/theos) installed. If you don't, [please refer to the official documentation](https://github.com/theos/theos/wiki/Installation) on how to set up Theos on your operating system of choice.

Once you've confirmed that you have Theos installed, open up Terminal and run the following commands:

```
git clone https://github.com/akemin-dayo/GenshinControllerEnabler.git
cd GenshinControllerEnabler
make
make package
```

And you should have a freshly built *.deb package file of Genshin Controller Enabler!

---

## License

Licensed under the [MIT License](https://opensource.org/licenses/MIT).
