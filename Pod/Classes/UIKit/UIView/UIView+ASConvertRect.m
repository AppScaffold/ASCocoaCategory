//
//  UIView+ASConvertRect.m
//  Pods
//
//  Created by Whirlwind on 2016/8/10.
//
//

#import "UIView+ASConvertRect.h"

@implementation UIView (ASConvertRect)

- (CGRect)as_convertRectToView:(UIView *)view {
    return [self convertRect:self.bounds toView:view];
}

@end
