//
//  NSArray+ASJSONSerialization.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ASJSONSerialization)

- (NSString *)as_stringWithJSONObject;
- (BOOL)as_writeToJSONFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;

@end
