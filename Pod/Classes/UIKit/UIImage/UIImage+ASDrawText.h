//
//  UIImage+ASDrawText.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-10-9.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ASDrawText)

- (UIImage *)as_drawText:(NSString *)text
                withRect:(CGRect)rect
                    font:(UIFont *)font
               textColor:(UIColor *)textColor;

@end
