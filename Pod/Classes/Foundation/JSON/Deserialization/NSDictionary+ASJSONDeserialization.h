//
//  NSDictionary+CCJSONDeserialization.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/3/25.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ASJSONDeserialization)

+ (instancetype)as_dictionaryWithJSONFile:(NSString *)path;

@end
