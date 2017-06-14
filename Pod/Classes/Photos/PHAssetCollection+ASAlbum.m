//
//  PHAssetCollection+ASAlbum.m
//  Pods
//
//  Created by Whirlwind on 2016/11/6.
//
//

#import "PHAssetCollection+ASAlbum.h"
#import "CGGeometryExtern.h"

@implementation PHAssetCollection (ASAlbum)

+ (NSArray<PHAssetCollection *> *)as_fetchAllUserAlbumsIncludeEmpty:(BOOL)include {
    NSMutableArray *result = [NSMutableArray array];

    PHFetchOptions *onlyImagesOptions;
    if (!include) {
        onlyImagesOptions = [PHFetchOptions new];
        onlyImagesOptions.predicate = [NSPredicate predicateWithFormat:@"mediaType = %i", PHAssetMediaTypeImage];
    }

    PHFetchResult<PHAssetCollection *> *albums;
    albums = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum subtype:PHAssetCollectionSubtypeSmartAlbumUserLibrary options:nil];
    [albums enumerateObjectsUsingBlock:^(PHAssetCollection *obj, NSUInteger idx, BOOL *stop) {
        if (include || [PHAsset fetchAssetsInAssetCollection:obj options:onlyImagesOptions].count > 0) {
            [result addObject:obj];
        }
    }];

    PHFetchOptions *userAlbumsOptions = [PHFetchOptions new];
    userAlbumsOptions.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:NO]];
    if (!include) {
        userAlbumsOptions.predicate = [NSPredicate predicateWithFormat:@"estimatedAssetCount > 0"];
    }

    albums = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeAny options:userAlbumsOptions];
    [albums enumerateObjectsUsingBlock:^(PHAssetCollection *obj, NSUInteger idx, BOOL *stop) {
        [result addObject:obj];
    }];

    return result;
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
    *info = outputInfo;
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
    PHFetchResult *assetsFetchResult = [PHAsset fetchAssetsInAssetCollection:self options:nil];
    PHAsset *asset = [assetsFetchResult objectAtIndex:0];
    PHImageManager *manager = [PHImageManager defaultManager];
    return [manager requestImageForAsset:asset
                              targetSize:CGSizeScale(size, [UIScreen mainScreen].scale)
                             contentMode:PHImageContentModeAspectFill
                                 options:requestOptions
                           resultHandler:resultHandler];
    
}

@end
