//
//  UIView+ASViewController.m
//  Pods
//
//  Created by Whirlwind on 2016/6/25.
//
//

#import "UIView+ASViewController.h"

@implementation UIView (ASViewController)

- (UIViewController *)as_viewController {
    UIResponder *responder = [self nextResponder];
    while (![responder isKindOfClass:[UIViewController class]]) {
        responder = [responder nextResponder];
        if (nil == responder) {
            break;
        }
    }
    return (UIViewController *)responder;
}

@end
