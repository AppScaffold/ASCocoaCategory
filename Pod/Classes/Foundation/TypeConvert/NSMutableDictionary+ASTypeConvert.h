//
//  NSMutableDictionary+ASTypeConvert.h
//  Taobao4iPad
//
//  Created by Whirlwind on 15/4/8.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASDictionaryFastSetValueProtocol <NSObject>

@optional

- (void)as_setInteger:(NSInteger)value forKey:(NSString *)key;
- (void)as_setFloat:(float)value forKey:(NSString *)key;
- (void)as_setDouble:(double)value forKey:(NSString *)key;
- (void)as_setBool:(BOOL)value forKey:(NSString *)key;
- (void)as_setURL:(NSURL *)url forKey:(NSString *)key;

@end

@interface NSMutableDictionary (ASTypeConvert) <ASDictionaryFastSetValueProtocol>

@end
