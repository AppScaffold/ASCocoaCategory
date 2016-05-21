//
//  NSString+ASBase64.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/20.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ASBase64)

/** Encode string to Base64 string using system library
 *  @return the Base64 NSString object
 */
- (NSString *)as_base64EncodedString;

- (NSString *)as_base64DecodedString;

@end
