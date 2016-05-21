//
//  NSDictionary+ASJSONDeserialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/3/25.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import "NSDictionary+ASJSONDeserialization.h"
#import "NSData+ASJSONDeserialization.h"

@implementation NSDictionary (ASJSONDeserialization)

+ (instancetype)as_dictionaryWithJSONFile:(NSString *)path {
    NSData *data = [NSData dataWithContentsOfFile:path];
    if (!data) {
        return nil;
    }
    return [data as_dictionaryFromJSONString];
}

@end
