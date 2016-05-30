//
//  NSArray+ASTypeConvert.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-1-18.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ASTypeConvert)

- (NSArray *)as_arrayAtIndex:(NSUInteger)index;
- (NSDictionary *)as_dictionaryAtIndex:(NSUInteger)index;
- (BOOL)as_boolAtIndex:(NSUInteger)index;
- (NSNumber *)as_numberAtIndex:(NSUInteger)index;
- (NSData *)as_dataAtIndex:(NSUInteger)index;
- (double)as_doubleAtIndex:(NSUInteger)index;
- (float)as_floatAtIndex:(NSUInteger)index;
- (NSInteger)as_integerAtIndex:(NSUInteger)index;
- (NSString *)as_stringAtIndex:(NSUInteger)index;
- (NSURL *)as_URLAtIndex:(NSUInteger)index;

@end
