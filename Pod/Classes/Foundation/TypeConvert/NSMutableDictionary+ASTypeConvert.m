//
//  NSMutableDictionary+ASTypeConvert.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/4/8.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import "NSMutableDictionary+ASTypeConvert.h"

@implementation NSMutableDictionary (ASTypeConvert)

- (void)as_setInteger:(NSInteger)value forKey:(NSString *)key {
    [self setObject:@(value) forKey:key];
}

- (void)as_setFloat:(float)value forKey:(NSString *)key {
    [self setObject:@(value) forKey:key];
}

- (void)as_setDouble:(double)value forKey:(NSString *)key {
    [self setObject:@(value) forKey:key];
}

- (void)as_setBool:(BOOL)value forKey:(NSString *)key {
    [self setObject:@(value) forKey:key];
}

- (void)as_setURL:(NSURL *)url forKey:(NSString *)key {
    [self setObject:[url absoluteString] forKey:key];
}

@end
