//
//  NSMutableDictionary+ASJSONDeserialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/3/25.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import "NSMutableDictionary+ASJSONDeserialization.h"
#import "ASJSONDeserialization.h"

@implementation NSMutableDictionary (ASJSONDeserialization)

+ (instancetype)as_dictionaryWithJSONFile:(NSString *)path {
    NSData *data = [NSData dataWithContentsOfFile:path];
    if (!data) {
        return nil;
    }
    id obj = mutableObjectFromJSONData(data);
    if ([obj isKindOfClass:[NSMutableDictionary class]]) {
        return obj;
    }
    return nil;
}

@end
