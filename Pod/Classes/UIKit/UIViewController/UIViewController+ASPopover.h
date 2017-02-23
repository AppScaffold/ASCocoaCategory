//
//  UIViewController+ASPopover.h
//  Pods
//
//  Created by Whirlwind on 2017/2/23.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController (ASPopover)

- (UIPopoverPresentationController *)as_presentPopoverViewController:(UIViewController *)viewControllerToPopover fromView:(UIView *)fromView animated:(BOOL)flag completion:(void (^)(void))completion;

@end
