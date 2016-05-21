//
//  NSData+ASBase64.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2016 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (ASBase64)

/**
 * Create an NSData using system library
 * @return the NSData object
 */
+ (id)as_dataWithBase64EncodedString:(NSString *)string;

/**
 * Create a NSString using system library
 * @return the NSString object
 */
- (NSString *)as_base64EncodedString;

@end
