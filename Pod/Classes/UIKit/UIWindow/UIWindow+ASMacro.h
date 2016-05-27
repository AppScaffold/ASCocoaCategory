
#define UIWindowIsLandscape UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)

#define UIWindowIsPortrait !UIWindowIsLandscape

#define UIApplicationWindow [[UIApplication sharedApplication].delegate window]
