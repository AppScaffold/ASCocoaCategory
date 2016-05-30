//
//  NSDictionary+ASTypeConvert.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-1-18.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSDictionary+ASTypeConvert.h"

@implementation NSDictionary (ASTypeConvert)

- (id)as_objectForKey:(id)aKey withClass:(Class)klass {
    id obj = [self objectForKey:aKey];
    if ([obj isKindOfClass:klass]) {
        return obj;
    }
    return nil;
}

- (id)as_objectForKey:(id)aKey withClass:(Class)klass withClass2:(Class)klass2 {
    id obj = [self objectForKey:aKey];
    if ([obj isKindOfClass:klass] || [obj isKindOfClass:klass2]) {
        return obj;
    }
    return nil;
}

#pragma mark - public

- (NSArray *)as_arrayForKey:(id)aKey {
    return [self as_objectForKey:aKey withClass:[NSArray class]];
}

- (NSDictionary *)as_dictionaryForKey:(id)aKey {
    return [self as_objectForKey:aKey withClass:[NSDictionary class]];
}

- (BOOL)boolForKey:(id)aKey {
    return [[self as_objectForKey:aKey withClass:[NSNumber class] withClass2:[NSString class]] boolValue];
}

- (NSNumber *)as_numberForKey:(id)aKey {
    return [self as_objectForKey:aKey withClass:[NSNumber class]];
}

- (NSData *)as_dataForKey:(id)aKey {
    return [self as_objectForKey:aKey withClass:[NSData class]];
}

- (double)doubleForKey:(id)aKey {
    return [[self as_objectForKey:aKey withClass:[NSNumber class] withClass2:[NSString class]] doubleValue];
}

- (float)floatForKey:(id)aKey {
    return [[self as_objectForKey:aKey withClass:[NSNumber class] withClass2:[NSString class]] floatValue];
}

- (NSInteger)integerForKey:(id)aKey {
    return [[self as_objectForKey:aKey withClass:[NSNumber class] withClass2:[NSString class]] integerValue];
}

- (NSString *)as_stringForKey:(id)aKey {
    return [self as_objectForKey:aKey withClass:[NSString class]];
}

- (NSURL *)as_URLForKey:(id)aKey {
    id obj = [self as_objectForKey:aKey withClass:[NSURL class] withClass2:[NSString class]];
    if ([obj isKindOfClass:[NSURL class]]) {
        return obj;
    } else {
        return [NSURL URLWithString:obj];
    }
}

@end
