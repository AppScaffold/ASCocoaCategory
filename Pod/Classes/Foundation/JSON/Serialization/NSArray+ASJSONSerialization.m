//
//  NSArray+ASJSONSerialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "NSArray+ASJSONSerialization.h"
#import "ASJSONSerialization.h"

@implementation NSArray (ASJSONSerialization)

- (NSString *)as_stringWithJSONObject {
    return stringWithJSONObject(self);
}

- (BOOL)as_writeToJSONFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile {
    return writeObjectToJSONFile(self, path, useAuxiliaryFile);
}

@end
