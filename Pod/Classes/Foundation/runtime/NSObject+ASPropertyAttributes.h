//
//  NSObject+ASPropertyAttributes.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/4/3.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __has_include(<libextobjc/EXTRuntimeExtensions.h>)
#import <libextobjc/EXTRuntimeExtensions.h>
#endif

@interface NSObject (PropertyAttributes)

+ (NSArray *)as_allPropertyNames;

#if __has_include(<libextobjc/EXTRuntimeExtensions.h>)
+ (ext_propertyAttributes *)as_copyPropertyAttributesByName:(NSString *)name;
#endif

@end
