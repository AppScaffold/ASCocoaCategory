//
//  ASJSONSerialization.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/11/5.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "ASJSONSerialization.h"

NSString *stringWithJSONObject(id obj) {
    if (!obj) {
        return nil;
    }
    NSError *error;
    NSData  *data = [NSJSONSerialization dataWithJSONObject:obj options:0 error:&error];
    if (error) {
        NSLog(@"<ERROR> convert to JSONString failed! Object: %@", obj);
        return nil;
    } else {
        return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
}

BOOL writeObjectToJSONFile(NSObject *obj, NSString *path, BOOL useAuxiliaryFile) {
    NSError *error;
    NSData  *data = [NSJSONSerialization dataWithJSONObject:obj options:0 error:&error];
    if (!data) {
        NSLog(@"<ERROR> convert dictionary to data fail: %@", error);
        return NO;
    }
    return [data writeToFile:path atomically:useAuxiliaryFile];
}

