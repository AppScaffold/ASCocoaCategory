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

#ifndef UIWindowRootViewController
#   define UIWindowRootViewController [[UIApplication sharedApplication].delegate window].rootViewController
#endif

UIKIT_STATIC_INLINE UIViewController *CurrentRootViewController() {
    UIViewController *vc = UIWindowRootViewController;
    while (vc) {
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        } else {
            break;
        }
    }
    return vc;
}

#ifndef RootViewController
#   define RootViewController CurrentRootViewController()
#endif

#ifndef RootView
#   define RootView RootViewController.view
#endif
