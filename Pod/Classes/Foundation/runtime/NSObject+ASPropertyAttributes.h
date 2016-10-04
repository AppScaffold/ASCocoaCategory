//
//  NSObject+ASPropertyAttributes.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/4/3.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __has_include(<libextobjc/EXTRuntimeExtensions.h>)
// This category need pod 'libextobjc'

#import <libextobjc/EXTRuntimeExtensions.h>

@interface NSObject (PropertyAttributes)

+ (ext_propertyAttributes *)copyPropertyAttributesByName:(NSString *)name;

@end

#endif
