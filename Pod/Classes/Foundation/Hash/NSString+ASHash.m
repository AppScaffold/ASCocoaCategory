//
//  NSString+ASHash.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2016 AppScaffold. All rights reserved.
//

@import Foundation;
#import "NSString+ASHash.h"
#import "NSData+ASHash.h"

@implementation NSString (ASHash)

- (NSString *)as_md5Hash {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] as_md5Hash];
}

- (NSString *)as_sha1Hash {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] as_sha1Hash];
}

@end
