//
//  NSString+ASJSONDeserialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSString+ASJSONDeserialization.h"
#import "ASJSONDeserialization.h"

@implementation NSString (ASJSONDeserialization)

- (NSDictionary *)as_dictionaryFromJSONString {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return JSONDeserializeToClass(data, [NSDictionary class]);
}

- (NSArray *)as_arrayFromJSONString {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return JSONDeserializeToClass(data, [NSArray class]);
}

- (NSMutableArray *)as_mutableArrayFromJSONString {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return JSONDeserializeToClass(data, [NSMutableArray class]);
}

- (NSMutableDictionary *)as_mutableDictionaryFromJSONString {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return JSONDeserializeToClass(data, [NSMutableDictionary class]);
}

@end
