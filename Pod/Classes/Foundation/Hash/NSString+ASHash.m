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

- (NSString *)md5Hash {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md5Hash];
}

- (NSString *)sha1Hash {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] sha1Hash];
}

@end
