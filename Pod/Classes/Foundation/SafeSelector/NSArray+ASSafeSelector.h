//
//  NSArray+ASSafeSelector.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-10.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray<ObjectType> (ASSafeSelector)

- (ObjectType)as_objectAtIndex:(NSUInteger)index;
+ (instancetype)as_arrayWithObject:(ObjectType)anObject;
- (NSArray<ObjectType> *)as_subarrayWithRange:(NSRange)range;

@end
