//
//  ASJSONDeserialization.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//


#pragma once
#import <Foundation/Foundation.h>

NSObject *objectFromJSONData(NSData *data);

NSObject *mutableObjectFromJSONData(NSData *data);

NSObject *JSONDeserializeToClass(NSData *data, Class klass);
