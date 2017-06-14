//
//  PHAsset+ASImage.m
//  Pods
//
//  Created by Whirlwind on 2016/11/5.
//
//

#import "PHAsset+ASImage.h"
#import "CGGeometryExtern.h"

@implementation PHAsset (ASImage)

- (UIImage *)as_requestImage:(NSDictionary **)info {
    PHImageRequestOptions *requestOptions = [[PHImageRequestOptions alloc] init];
    requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    requestOptions.synchronous  = YES;

    __block UIImage *image = nil;
    __block NSDictionary *outputInfo = nil;
    [self as_requestImageWithOptions:requestOptions resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info1) {
        image = result;
        outputInfo = info1;
    }];
    if (info) {
        *info = outputInfo;
    }
    return image;
}

- (PHImageRequestID)as_requestImageWithResultHandler:(void (^)(UIImage *__nullable result, NSDictionary *__nullable info))resultHandler {
    PHImageRequestOptions *requestOptions = [[PHImageRequestOptions alloc] init];
    requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    return [self as_requestImageWithOptions:requestOptions resultHandler:resultHandler];
}

- (PHImageRequestID)as_requestImageWithOptions:(PHImageRequestOptions *)requestOptions
                  resultHandler:(void (^)(UIImage *__nullable result, NSDictionary *__nullable info))resultHandler {
    PHImageManager *manager = [PHImageManager defaultManager];
    return [manager requestImageForAsset:self
                              targetSize:PHImageManagerMaximumSize
                             contentMode:PHImageContentModeDefault
                                 options:requestOptions
                           resultHandler:resultHandler];
}

#pragma mark - thumb

- (UIImage *)as_requestThumbImageWithSize:(CGSize)size info:(NSDictionary **)info {
    PHImageRequestOptions *requestOptions = [[PHImageRequestOptions alloc] init];
    requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    requestOptions.synchronous  = YES;

    __block UIImage *image = nil;
    __block NSDictionary *outputInfo = nil;
    [self as_requestThumbImageWithOptions:requestOptions size:size resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info1) {
        image = result;
        outputInfo = info1;
    }];
    if (info) {
        *info = outputInfo;
    }
    return image;
}

- (PHImageRequestID)as_requestThumbImageWithSize:(CGSize)size
                       resultHandler:(void (^)(UIImage *result, NSDictionary *info))resultHandler {
    PHImageRequestOptions *requestOptions = [[PHImageRequestOptions alloc] init];
    requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    return [self as_requestThumbImageWithOptions:requestOptions size:size resultHandler:resultHandler];
}

- (PHImageRequestID)as_requestThumbImageWithOptions:(PHImageRequestOptions *)requestOptions
                                size:(CGSize)size
                        resultHandler:(void (^)(UIImage *result, NSDictionary *info))resultHandler {
    PHImageManager *manager = [PHImageManager defaultManager];
    return [manager requestImageForAsset:self
                              targetSize:CGSizeScale(size, [UIScreen mainScreen].scale)
                             contentMode:PHImageContentModeAspectFill
                                 options:requestOptions
                           resultHandler:resultHandler];

}

@end
