//
//  NSString+ASNumeric.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-1-17.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSString+ASNumeric.h"

@implementation NSString (ASNumeric)

- (BOOL)as_isDecimal {
    NSCharacterSet *notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    return [self rangeOfCharacterFromSet:notDigits].location == NSNotFound;
}

@end
