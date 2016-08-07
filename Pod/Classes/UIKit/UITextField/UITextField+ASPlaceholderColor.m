//
//  UITextField+ASPlaceholderColor.m
//  Pods
//
//  Created by Whirlwind on 2016/8/7.
//
//

#import "UITextField+ASPlaceholderColor.h"

@implementation UITextField (ASPlaceholderColor)

- (void)as_setPlaceholderColor:(UIColor *)placeholderColor {
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
}

- (UIColor *)as_placeholderColor {
    return [self.attributedPlaceholder attribute:NSForegroundColorAttributeName atIndex:0 effectiveRange:NULL];
}

@end
