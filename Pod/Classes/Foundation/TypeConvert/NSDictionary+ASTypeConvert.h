//
//  NSDictionary+ASTypeConvert.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-1-18.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASDictionaryFastGetValueProtocol <NSObject>

@optional
- (NSArray *)as_arrayForKey:(id)aKey;
- (NSDictionary *)as_dictionaryForKey:(id)aKey;
- (BOOL)as_boolForKey:(id)aKey;
- (NSNumber *)as_numberForKey:(id)aKey;
- (NSData *)as_dataForKey:(id)aKey;
- (double)as_doubleForKey:(id)aKey;
- (float)as_floatForKey:(id)aKey;
- (NSInteger)as_integerForKey:(id)aKey;
- (NSString *)as_stringForKey:(id)aKey;
- (NSURL *)as_URLForKey:(id)aKey;

@end

@interface NSDictionary (ASTypeConvert) <ASDictionaryFastGetValueProtocol>

@end
