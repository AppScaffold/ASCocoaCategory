//
//  ASJSONSerialization.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma once

NSString *stringWithJSONObject(id obj);
BOOL writeObjectToJSONFile(NSObject *obj, NSString *path, BOOL useAuxiliaryFile);
