//
//  NSObject+ASPropertyAttributes.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/4/3.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import "NSObject+ASPropertyAttributes.h"
#import <objc/runtime.h>

@import UIKit;

@implementation NSObject (PropertyAttributes)

+ (NSArray *)as_allPropertyNames {
    return [self as_allPropertyNamesIgnoreReadonly:NO];
}

+ (NSArray *)as_allPropertyNamesIgnoreReadonly:(BOOL)ignore {
    unsigned count;
    objc_property_t *properties = class_copyPropertyList(self, &count);
    NSMutableArray *rv = [NSMutableArray array];
    unsigned i;
    for (i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        if (ignore) {
            ext_propertyAttributes *attr = ext_copyPropertyAttributes(property);
            if (attr->readonly) {
                continue;
            }
        }
        NSString *name = [NSString stringWithUTF8String:property_getName(property)];
        [rv addObject:name];
    }
    free(properties);
    return rv;
}

#if __has_include(<libextobjc/EXTRuntimeExtensions.h>)

+ (ext_propertyAttributes *)as_copyPropertyAttributesByName:(NSString *)name {
    const char      *cName   = [name UTF8String];
    objc_property_t property = class_getProperty(self, cName);
    if (property) {
        return ext_copyPropertyAttributes(property);
    }
    if ([self isSubclassOfClass:[UIView class]]) {
        return [self extendUIViewAttributesForProperty:name];
    } else {
        return NULL;
    }
}

// In UIView, we could NOT get some properties in the runtime.
// I think that it is a bug of the compiler.
// So we will manual create a struct.
+ (ext_propertyAttributes *)extendUIViewAttributesForProperty:(NSString *)name {
    if ([name isEqualToString:@"frame"]) {
        size_t                 typeLength  = sizeof(@encode(CGRect));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(frame);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setFrame:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(CGRect), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"backgroundColor"]) {
        size_t                 typeLength  = sizeof(@encode(UIColor));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(backgroundColor);
        attributes->nonatomic              = YES;
        attributes->objectClass            = [UIColor class];
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setBackgroundColor:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyCopy;
        strncpy(attributes->type, @encode(UIColor), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"alpha"]) {
        size_t                 typeLength  = sizeof(@encode(CGFloat));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(alpha);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setAlpha:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(CGFloat), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"autoresizesSubviews"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(autoresizesSubviews);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setAutoresizesSubviews:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"autoresizingMask"]) {
        size_t                 typeLength  = sizeof(@encode(NSUInteger));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(autoresizingMask);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setAutoresizingMask:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(NSUInteger), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"clearsContextBeforeDrawing"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(clearsContextBeforeDrawing);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setClearsContextBeforeDrawing:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"clipsToBounds"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(clipsToBounds);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setClipsToBounds:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"contentMode"]) {
        size_t                 typeLength  = sizeof(@encode(NSUInteger));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(contentMode);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setContentMode:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(NSUInteger), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"contentScaleFactor"]) {
        size_t                 typeLength  = sizeof(@encode(CGFloat));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(contentScaleFactor);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setContentScaleFactor:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(CGFloat), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"exclusiveTouch"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(isExclusiveTouch);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setExclusiveTouch:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"gestureRecognizers"]) {
        size_t                 typeLength  = sizeof(@encode(NSArray));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(gestureRecognizers);
        attributes->nonatomic              = YES;
        attributes->objectClass            = [NSArray class];
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setGestureRecognizers:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyCopy;
        strncpy(attributes->type, @encode(NSArray), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"hidden"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(isHidden);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setHidden:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"multipleTouchEnabled"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(isMultipleTouchEnabled);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setMultipleTouchEnabled:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"opaque"]) {
        size_t                 typeLength  = sizeof(@encode(BOOL));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(isOpaque);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setOpaque:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(BOOL), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"subviews"]) {
        size_t                 typeLength  = sizeof(@encode(NSArray));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(subviews);
        attributes->nonatomic              = YES;
        attributes->objectClass            = [NSArray class];
        attributes->readonly               = YES;
        attributes->setter                 = nil;
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyCopy;
        strncpy(attributes->type, @encode(NSArray), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"motionEffects"]) {
        size_t                 typeLength  = sizeof(@encode(NSArray));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(motionEffects);
        attributes->nonatomic              = YES;
        attributes->objectClass            = [NSArray class];
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setMotionEffects:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyCopy;
        strncpy(attributes->type, @encode(NSArray), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"tintAdjustmentMode"]) {
        size_t                 typeLength  = sizeof(@encode(NSInteger));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(tintAdjustmentMode);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setTintAdjustmentMode:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(NSInteger), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"autoresizingMask"]) {
        size_t                 typeLength  = sizeof(@encode(NSUInteger));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(autoresizingMask);
        attributes->nonatomic              = YES;
        attributes->objectClass            = NULL;
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setAutoresizingMask:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyAssign;
        strncpy(attributes->type, @encode(NSUInteger), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    } else if ([name isEqualToString:@"tintColor"]) {
        size_t                 typeLength  = sizeof(@encode(UIColor));
        ext_propertyAttributes *attributes = calloc(1, sizeof(ext_propertyAttributes) + typeLength + 1);
        attributes->canBeCollected         = NO;
        attributes->dynamic                = NO;
        attributes->getter                 = @selector(tintColor);
        attributes->nonatomic              = YES;
        attributes->objectClass            = [UIColor class];
        attributes->readonly               = NO;
        attributes->setter                 = @selector(setTintColor:);
        attributes->weak                   = NO;
        attributes->memoryManagementPolicy = ext_propertyMemoryManagementPolicyRetain;
        strncpy(attributes->type, @encode(UIColor), typeLength);
        attributes->type[typeLength] = '\0';
        return attributes;
    }
    return NULL;
}

#endif

@end
