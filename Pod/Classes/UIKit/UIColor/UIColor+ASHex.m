//
//  UIColor+ASHex.h
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/4.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "UIColor+ASHex.h"

@implementation UIColor (ASHex)

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hexValue & 0xFF)) / 255.0
                           alpha:alphaValue];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_colorWithHexString:(NSString *)hexString {
    NSString *cString = [[hexString
                          stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]
                         uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6)
        return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor grayColor];
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f)
                           green:((float)g / 255.0f)
                            blue:((float)b / 255.0f)
                           alpha:1.0f];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue {
    return [UIColor as_colorWithHex:hexValue alpha:1.0];
}

@end
