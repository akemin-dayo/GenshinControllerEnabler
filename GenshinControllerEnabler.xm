%hook UIDevice
-(NSString *) systemVersion {
	// Yup, that's it. This is probably the simplest tweak ever.
	return @"14.0";
}
%end
