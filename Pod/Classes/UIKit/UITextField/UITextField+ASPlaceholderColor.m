//
//  UITextField+ASPlaceholderColor.m
//  Pods
//
//  Created by Whirlwind on 2016/7/30.
//
//

#import "UITextField+ASPlaceholderColor.h"

@implementation UITextField (ASPlaceholderColor)

- (UIColor *)as_placeholderColor {
    return [self.attributedPlaceholder attribute:NSForegroundColorAttributeName atIndex:0 effectiveRange:NULL];
}

- (void)as_setPlaceholderColor:(UIColor *)placeholderColor {
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:@{NSForegroundColorAttributeName: placeholderColor}];
}

@end
