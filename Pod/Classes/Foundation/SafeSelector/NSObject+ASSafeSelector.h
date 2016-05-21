//
//  NSObject+ASSafeSelector.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-13.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>


// performSelector 去除ARC警告
#define PerformSelectorWithoutLeakWarningBegin \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"")

#define PerformSelectorWithoutLeakWarningEnd \
_Pragma("clang diagnostic pop")


@interface NSObject (ASSafeSelector)

#pragma mark - basic
- (id)as_performSelector:(SEL)aSelector;
- (id)as_performSelector:(SEL)aSelector withObject:(id)object1;
- (id)as_performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;

#pragma mark - NSDelayedPerforming
- (void)as_performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay;
- (void)as_performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay inModes:(NSArray *)modes;

#pragma mark - NSThreadPerformAdditions
- (void)as_performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array;
- (void)as_performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait;
- (void)as_performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array NS_AVAILABLE(10_5, 2_0);

- (void)as_performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait NS_AVAILABLE(10_5, 2_0);
- (void)as_performSelectorInBackground:(SEL)aSelector withObject:(id)arg NS_AVAILABLE(10_5, 2_0);

@end
