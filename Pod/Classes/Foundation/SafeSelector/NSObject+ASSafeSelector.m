//
//  NSObject+ASSafeSelector.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-13.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "NSObject+ASSafeSelector.h"

@implementation NSObject (ASSafeSelector)

#pragma mark - basic
- (id)as_performSelector:(SEL)aSelector {
    if ([self respondsToSelector:aSelector]) {
        PerformSelectorWithoutLeakWarningBegin
        return [self performSelector:aSelector];
        PerformSelectorWithoutLeakWarningEnd
    }
    return nil;
}

- (id)as_performSelector:(SEL)aSelector withObject:(id)object1 {
    if ([self respondsToSelector:aSelector]) {
        PerformSelectorWithoutLeakWarningBegin
        return [self performSelector:aSelector withObject:object1];
        PerformSelectorWithoutLeakWarningEnd
    }
    return nil;
}

- (id)as_performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2 {
    if ([self respondsToSelector:aSelector]) {
        PerformSelectorWithoutLeakWarningBegin
        return [self performSelector:aSelector withObject:object1 withObject:object2];
        PerformSelectorWithoutLeakWarningEnd
    }
    return nil;
}

#pragma mark - NSDelayedPerforming
- (void)as_performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay {
    if ([self respondsToSelector:aSelector]) {
        [self performSelector:aSelector withObject:anArgument afterDelay:delay];
    }
}

- (void)as_performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay inModes:(NSArray *)modes {
    if ([self respondsToSelector:aSelector]) {
        [self performSelector:aSelector withObject:anArgument afterDelay:delay inModes:modes];
    }
}

#pragma mark - NSThreadPerformAdditions
- (void)as_performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array {
    if ([self respondsToSelector:aSelector]) {
        [self performSelectorOnMainThread:aSelector withObject:arg waitUntilDone:wait modes:array];
    }
}

- (void)as_performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait {
    if ([self respondsToSelector:aSelector]) {
        [self performSelectorOnMainThread:aSelector withObject:arg waitUntilDone:wait];
    }
}

- (void)as_performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array {
    if ([self respondsToSelector:aSelector]) {
        [self performSelector:aSelector onThread:thr withObject:arg waitUntilDone:wait modes:array];
    }
}

- (void)as_performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait {
    if ([self respondsToSelector:aSelector]) {
        [self performSelector:aSelector onThread:thr withObject:arg waitUntilDone:wait];
    }
}

- (void)as_performSelectorInBackground:(SEL)aSelector withObject:(id)arg {
    if ([self respondsToSelector:aSelector]) {
        [self performSelectorInBackground:aSelector withObject:arg];
    }
}

@end
