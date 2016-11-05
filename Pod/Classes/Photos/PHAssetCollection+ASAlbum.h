//
//  PHAssetCollection+ASAlbum.h
//  Pods
//
//  Created by Whirlwind on 2016/11/6.
//
//

#import <Photos/Photos.h>

@interface PHAssetCollection (ASAlbum)

+ (NSArray<PHAssetCollection *> *)fetchAllUserAlbumsIncludeEmpty:(BOOL)include;

@end
