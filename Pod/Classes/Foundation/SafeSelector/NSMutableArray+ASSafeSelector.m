//
//  NSMutableArray+ASSafeSelector.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-10.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "NSMutableArray+ASSafeSelector.h"
#import "NSString+ASMacro.h"

@implementation NSMutableArray (ASSafeSelector)

- (BOOL)as_addObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)as_insertObject:(id)anObject atIndex:(NSUInteger)index {
    if (anObject) {
        if (anObject) {
            [self insertObject:anObject atIndex:index];
            return YES;
        }
    }
    return NO;
}

- (BOOL)as_removeObjectAtIndex:(NSUInteger)index {
    if ([self count] > index) {
        [self removeObjectAtIndex:index];
        return YES;
    }
    return NO;
}

- (BOOL)as_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    if ([self count] > index) {
        if (anObject) {
            [self replaceObjectAtIndex:index withObject:anObject];
            return YES;
        }
    }
    return NO;
}

- (BOOL)as_addNotBlankString:(NSString *)string {
    if (NSStringIsBlank(string)) {
        return NO;
    }
    return [self as_addObject:string];
}

- (BOOL)as_insertNotBlankString:(NSString *)string atIndex:(NSUInteger)index {
    if (NSStringIsBlank(string)) {
        return NO;
    }
    return [self as_insertObject:string atIndex:index];
}

@end
