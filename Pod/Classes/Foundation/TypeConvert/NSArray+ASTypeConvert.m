//
//  NSArray+ASTypeConvert.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-1-18.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSArray+ASTypeConvert.h"
#import "NSArray+ASSafeSelector.h"

@implementation NSArray (ASTypeConvert)

- (id)as_objectAtIndex:(NSUInteger)index withClass:(Class)klass {
    id obj = [self as_objectAtIndex:index];
    if ([obj isKindOfClass:klass]) {
        return obj;
    }
    return nil;
}

- (id)as_objectAtIndex:(NSUInteger)index withClass:(Class)klass withClass2:(Class)klass2 {
    id obj = [self as_objectAtIndex:index];
    if ([obj isKindOfClass:klass] || [obj isKindOfClass:klass2]) {
        return obj;
    }
    return nil;
}

#pragma mark - public

- (NSArray *)as_arrayAtIndex:(NSUInteger)index {
    return [self as_objectAtIndex:index withClass:[NSArray class]];
}

- (NSDictionary *)as_dictionaryAtIndex:(NSUInteger)index {
    return [self as_objectAtIndex:index withClass:[NSDictionary class]];
}

- (BOOL)as_boolAtIndex:(NSUInteger)index {
    return [[self as_objectAtIndex:index withClass:[NSNumber class] withClass2:[NSString class]] boolValue];
}

- (NSNumber *)as_numberAtIndex:(NSUInteger)index {
    return [self as_objectAtIndex:index withClass:[NSNumber class]];
}

- (NSData *)as_dataAtIndex:(NSUInteger)index {
    return [self as_objectAtIndex:index withClass:[NSData class]];
}

- (double)as_doubleAtIndex:(NSUInteger)index {
    return [[self as_objectAtIndex:index withClass:[NSNumber class] withClass2:[NSString class]] doubleValue];
}

- (float)as_floatAtIndex:(NSUInteger)index {
    return [[self as_objectAtIndex:index withClass:[NSNumber class] withClass2:[NSString class]] floatValue];
}

- (NSInteger)as_integerAtIndex:(NSUInteger)index {
    return [[self as_objectAtIndex:index withClass:[NSNumber class] withClass2:[NSString class]] integerValue];
}

- (NSString *)as_stringAtIndex:(NSUInteger)index {
    return [self as_objectAtIndex:index withClass:[NSString class]];
}

- (NSURL *)as_URLAtIndex:(NSUInteger)index {
    id obj = [self as_objectAtIndex:index withClass:[NSURL class] withClass2:[NSString class]];
    if ([obj isKindOfClass:[NSURL class]]) {
        return obj;
    } else {
        return [NSURL URLWithString:obj];
    }
}

@end
