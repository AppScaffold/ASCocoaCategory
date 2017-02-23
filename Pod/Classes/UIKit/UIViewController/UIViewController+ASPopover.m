//
//  UIViewController+ASPopover.m
//  Pods
//
//  Created by Whirlwind on 2017/2/23.
//
//

#import "UIViewController+ASPopover.h"
#import "UIGeometryExtends.h"

@implementation UIViewController (ASPopover)

- (UIPopoverPresentationController *)as_presentPopoverViewController:(UIViewController *)viewControllerToPopover
                            fromView:(UIView *)fromView
                            animated:(BOOL)flag
                          completion:(void (^)(void))completion {
    viewControllerToPopover.modalPresentationStyle = UIModalPresentationPopover;
    UIPopoverPresentationController *popController = [viewControllerToPopover popoverPresentationController];
    popController.sourceView = fromView;
    popController.sourceRect = UIEdgeInsetsExtendRect(fromView.bounds, fromView.layoutMargins);
    [self presentViewController:viewControllerToPopover animated:flag completion:completion];
    return popController;
}

@end
