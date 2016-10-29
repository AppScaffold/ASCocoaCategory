//
//  NSMutableArray+ASSafeSelector.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-10.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (ASSafeSelector)

- (id)as_objectAtIndex:(NSInteger)index;
- (BOOL)as_addObject:(id)anObject;
- (BOOL)as_insertObject:(id)anObject atIndex:(NSUInteger)index;
- (BOOL)as_removeObjectAtIndex:(NSUInteger)index;
- (BOOL)as_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

- (BOOL)as_addNotBlankString:(NSString *)string;
- (BOOL)as_insertNotBlankString:(NSString *)string atIndex:(NSUInteger)index;

@end
