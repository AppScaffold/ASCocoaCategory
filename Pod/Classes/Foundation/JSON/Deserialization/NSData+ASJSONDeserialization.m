//
//  NSData+ASJSONDeserialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSData+ASJSONDeserialization.h"
#import "ASJSONDeserialization.h"

@implementation NSData (ASJSONDeserialization)

- (NSDictionary *)as_dictionaryFromJSONString {
    return JSONDeserializeToClass(self, [NSDictionary class]);
}

- (NSArray *)as_arrayFromJSONString {
    return JSONDeserializeToClass(self, [NSArray class]);
}

- (NSMutableArray *)as_mutableArrayFromJSONString {
    return JSONDeserializeToClass(self, [NSMutableArray class]);
}

- (NSMutableDictionary *)as_mutableDictionaryFromJSONString {
    return JSONDeserializeToClass(self, [NSMutableDictionary class]);
}

@end
