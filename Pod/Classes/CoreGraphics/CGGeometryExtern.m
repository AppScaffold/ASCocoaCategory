//
//  CGGeometryExtern.m
//  Pods
//
//  Created by Whirlwind on 2016/11/4.
//
//

#import "CGGeometryExtern.h"

CG_EXTERN CGSize CGSizeScale(CGSize size, CGFloat scale) {
    return CGSizeMake(size.width * scale, size.height * scale);
}
