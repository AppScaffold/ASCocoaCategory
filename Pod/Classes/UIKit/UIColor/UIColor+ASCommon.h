//
//  UIColor+ASCommon.h
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/4.
//  Copyright (c) 2016-2017 AppScaffold
//

#import <UIKit/UIKit.h>

@interface UIColor (ASCommon)

/**
 *
 */
+ (UIColor*)as_whiteColorWithAlpha:(CGFloat)alphaValue;

/**
 *
 */
+ (UIColor*)as_blackColorWithAlpha:(CGFloat)alphaValue;

/**
 *  Return color by RGB value
 */
+ (UIColor*)as_colorFromRGBFloatRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

/**
 *
 */
+ (UIColor*)as_colorFromRGBFloatRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

@end
