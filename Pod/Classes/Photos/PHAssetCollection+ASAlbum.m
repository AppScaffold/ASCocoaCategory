//
//  PHAssetCollection+ASAlbum.m
//  Pods
//
//  Created by Whirlwind on 2016/11/6.
//
//

#import "PHAssetCollection+ASAlbum.h"

@implementation PHAssetCollection (ASAlbum)

+ (NSArray<PHAssetCollection *> *)fetchAllUserAlbumsIncludeEmpty:(BOOL)include {
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

@end
