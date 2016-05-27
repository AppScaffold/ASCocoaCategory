//
//  UIImage+ASDrawText.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-10-9.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "UIImage+ASDrawText.h"

@implementation UIImage (ASDrawText)

- (UIImage *)as_drawText:(NSString *)text
                withRect:(CGRect)rect
                    font:(UIFont *)font
               textColor:(UIColor *)textColor {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [[UIScreen mainScreen] scale]);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    [textColor set];
    [text drawInRect:CGRectIntegral(rect) withFont:font];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
