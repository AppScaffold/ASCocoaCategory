//
//  ASJSONDeserialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "ASJSONDeserialization.h"

NSObject *objectFromJSONData(NSData *data) {
    if (!data) {
        return nil;
    }
    NSError *error;
    id      obj = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if (error) {
        NSLog(@"<ERROR> convert to JSONObject failed!");
        return nil;
    } else {
        return obj;
    }
}

NSObject *mutableObjectFromJSONData(NSData *data) {
    if (!data) {
        return nil;
    }
    NSError *error;
    id      obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        NSLog(@"<ERROR> convert to JSONObject failed!");
        return nil;
    } else {
        return obj;
    }
}

NSObject *JSONDeserializeToClass(NSData *data, Class klass) {
    id obj;
    if (klass == [NSMutableArray class] || klass == [NSMutableDictionary class]) {
        obj = mutableObjectFromJSONData(data);
    } else {
        obj = objectFromJSONData(data);
    }
    if ([obj isKindOfClass:klass]) {
        return obj;
    }
    return nil;
}

