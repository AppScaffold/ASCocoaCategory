#ifndef UIViewAutoresizingFlexibleSize
#   define UIViewAutoresizingFlexibleSize (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth)
#endif

#ifndef UIViewAutoresizingFlexibleMargin
#   define UIViewAutoresizingFlexibleMargin (UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin)
#endif

#ifndef UIViewAutoresizingLeftCenter
#   define UIViewAutoresizingLeftCenter (UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin)
#endif

#ifndef UIViewAutoresizingRightCenter
#   define UIViewAutoresizingRightCenter (UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin)
#endif

#ifndef RootViewController
#   define RootViewController [[UIApplication sharedApplication].delegate window].rootViewController
#endif

#ifndef RootView
#   define RootView RootViewController.view
#endif
