//
//  NSString+CCJSONDeserialization.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ASJSONDeserialization)

- (NSDictionary *)as_dictionaryFromJSONString;

- (NSArray *)as_arrayFromJSONString;

- (NSMutableArray *)as_mutableArrayFromJSONString;

- (NSMutableDictionary *)as_mutableDictionaryFromJSONString;

@end
