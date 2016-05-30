//
//  NSString+ASBase64.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/20.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSString+ASBase64.h"
#import "NSData+ASBase64.h"

@implementation NSString (ASBase64)

- (NSString *)as_base64EncodedString {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data as_base64EncodedString];
}

- (NSString *)as_base64DecodedString {
    NSData *decodedData = [NSData as_dataWithBase64EncodedString:self];
    return [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
}

@end
