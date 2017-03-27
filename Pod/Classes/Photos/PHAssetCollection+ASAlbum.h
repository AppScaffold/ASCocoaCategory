//
//  PHAssetCollection+ASAlbum.h
//  Pods
//
//  Created by Whirlwind on 2016/11/6.
//
//

#import <Photos/Photos.h>

@interface PHAssetCollection (ASAlbum)

+ (NSArray<PHAssetCollection *> *)as_fetchAllUserAlbumsIncludeEmpty:(BOOL)include;

- (UIImage *)as_requestThumbImageWithSize:(CGSize)size info:(NSDictionary **)info;
- (PHImageRequestID)as_requestThumbImageWithSize:(CGSize)size
                                   resultHandler:(void (^)(UIImage *result, NSDictionary *info))resultHandler;
- (PHImageRequestID)as_requestThumbImageWithOptions:(PHImageRequestOptions *)requestOptions
                                               size:(CGSize)size
                                      resultHandler:(void (^)(UIImage *result, NSDictionary *info))resultHandler;
@end
