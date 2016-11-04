//
//  PHAsset+ASImage.m
//  Pods
//
//  Created by Whirlwind on 2016/11/5.
//
//

#import "PHAsset+ASImage.h"

@implementation PHAsset (ASImage)

- (UIImage *)as_requestImage:(NSDictionary **)info {
    PHImageRequestOptions *requestOptions = [[PHImageRequestOptions alloc] init];
    requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    requestOptions.synchronous  = YES;

    __block UIImage *image = nil;
    [self as_requestImageWithOptions:requestOptions resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info1) {
        image = result;
        if (info) {
            *info = info1;
        }
    }];
    return image;
}

- (void)as_requestImageWithResultHandler:(void (^)(UIImage *__nullable result, NSDictionary *__nullable info))resultHandler {
    PHImageRequestOptions *requestOptions = [[PHImageRequestOptions alloc] init];
    requestOptions.resizeMode   = PHImageRequestOptionsResizeModeExact;
    requestOptions.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    [self as_requestImageWithOptions:requestOptions resultHandler:resultHandler];
}

- (void)as_requestImageWithOptions:(PHImageRequestOptions *)requestOptions
                  resultHandler:(void (^)(UIImage *__nullable result, NSDictionary *__nullable info))resultHandler {
    PHImageManager *manager = [PHImageManager defaultManager];
    [manager requestImageForAsset:self
                       targetSize:PHImageManagerMaximumSize
                      contentMode:PHImageContentModeDefault
                          options:requestOptions
                    resultHandler:resultHandler];
}

@end
