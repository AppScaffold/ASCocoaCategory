//
//  NSArray+ASSafeSelector.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-10.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "NSArray+ASSafeSelector.h"

@implementation NSArray (ASSafeSelector)

- (id)as_objectAtIndex:(NSUInteger)index {
    if ([self count] > index) {
        return [self objectAtIndex:index];
    }
    return nil;
}

+ (instancetype)as_arrayWithObject:(id)anObject {
    if (anObject) {
        return [self arrayWithObject:anObject];
    }
    return nil;
}

- (NSArray *)as_subarrayWithRange:(NSRange)range {
    if (range.length == 0 || [self count] <= range.location) {
        return @[];
    }
    return [self subarrayWithRange:NSMakeRange(range.location, MIN(range.length, [self count] - range.location))];
}

@end
