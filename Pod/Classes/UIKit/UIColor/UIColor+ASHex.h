//
//  UIColor+ASHex.h
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/4.
//  Copyright (c) 2016-2017 AppScaffold
//

#import <UIKit/UIKit.h>

@interface UIColor (ASHex)

/**
 *
 */
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

/**
 * Return color by hex value
 */
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue;

/**
 * #RRGGBB or #RRGGBBAA
 */
+ (UIColor *)as_colorWithHexString:(NSString *)hexString;

/**
 * #RRGGBB or #RRGGBBAA, the `AA` will be ignored.
 */
+ (UIColor *)as_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end
