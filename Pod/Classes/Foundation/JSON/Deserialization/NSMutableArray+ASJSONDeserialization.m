//
//  NSMutableArray+ASJSONDeserialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/6/6.
//  Copyright (c) 2015年 Taobao. All rights reserved.
//

#import "NSMutableArray+ASJSONDeserialization.h"
#import "NSData+ASJSONDeserialization.h"

@implementation NSMutableArray (ASJSONDeserialization)

+ (instancetype)as_arrayWithJSONFile:(NSString *)path {
    NSData *data = [NSData dataWithContentsOfFile:path];
    if (!data) {
        return nil;
    }
    return [data as_mutableArrayFromJSONString];
}

@end
