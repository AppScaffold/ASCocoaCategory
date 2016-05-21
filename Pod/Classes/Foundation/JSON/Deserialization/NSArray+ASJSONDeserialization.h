//
//  NSArray+ASJSONDeserialization.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/6/6.
//  Copyright (c) 2015年 Taobao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ASJSONDeserialization)

+ (instancetype)as_arrayWithJSONFile:(NSString *)path;

@end
