//
//  NSFileManager+ASPath.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-11.
//  Copyright (c) 2016 AppScaffold. All rights reserved.
//

#import "NSFileManager+ASPath.h"
#import <sys/stat.h>

@implementation NSFileManager (ASPath)

#pragma mark Standard Paths

+ (NSString *)as_appPath {
    return [[NSBundle mainBundle] resourcePath];
}

+ (NSString *)as_cachesPath {
    static dispatch_once_t onceToken;
    static NSString        *__cachedPath;

    dispatch_once(&onceToken, ^{
        __cachedPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    });

    return __cachedPath;
}

+ (NSString *)as_documentPath {
    static dispatch_once_t onceToken;
    static NSString        *__documentPath;

    dispatch_once(&onceToken, ^{
        __documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    });

    return __documentPath;
}

#pragma mark Temporary Paths

+ (NSString *)as_temporaryPath {
    static dispatch_once_t onceToken;
    static NSString        *__temporaryPath;

    dispatch_once(&onceToken, ^{
        __temporaryPath = NSTemporaryDirectory();
    });

    return __temporaryPath;
}

+ (NSString *)as_pathForTemporaryFile {
    CFUUIDRef   newUniqueId       = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef newUniqueIdString = CFUUIDCreateString(kCFAllocatorDefault, newUniqueId);
    NSString    *tmpPath          = [[self as_temporaryPath] stringByAppendingPathComponent:(__bridge NSString *)newUniqueIdString];
    CFRelease(newUniqueId);
    CFRelease(newUniqueIdString);

    return tmpPath;
}

+ (BOOL)as_addSkipBackupAttributeToItemAtPath:(NSString *)filePathString {
    NSURL *URL = [NSURL fileURLWithPath:filePathString];
    assert([[NSFileManager defaultManager] fileExistsAtPath:[URL path]]);

    NSError *error  = nil;
    BOOL    success = [URL setResourceValue:[NSNumber numberWithBool:YES]
                                     forKey:NSURLIsExcludedFromBackupKey
                                      error:&error];
    if (!success) {
        NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    return success;
}

+ (off_t)as_fileSizeAtPath:(NSString *)filePath {
    struct stat statbuf;
    const char *cpath = [filePath fileSystemRepresentation];
    if (cpath && stat(cpath, &statbuf) == 0) {
        return statbuf.st_size;
    }
    return 0;
}

+ (off_t)as_folderSizeAtPath:(NSString *)folderPath {
    NSFileManager *fm = [NSFileManager defaultManager];
    NSArray *filesArray = [fm contentsOfDirectoryAtPath:folderPath error:nil];
    NSEnumerator *filesEnumerator = [filesArray objectEnumerator];
    NSString *fileName;
    NSString *path;
    off_t fileSize = 0;
    BOOL isDirectory;

    while (fileName = [filesEnumerator nextObject]) {
        path = [folderPath stringByAppendingPathComponent:fileName];
        if ([fm fileExistsAtPath:path isDirectory:&isDirectory] && isDirectory) {
            fileSize += [self as_folderSizeAtPath:path];
        } else {
            fileSize += [self as_fileSizeAtPath:[folderPath stringByAppendingPathComponent:fileName]];
        }
    }

    return fileSize;
}

+ (NSString *)as_prettySizeStringForSize:(off_t)size {
    NSArray *units = @[@"B", @"KB", @"MB", @"GB", @"TB"];
    for (NSInteger i = 0; i < [units count]; i++) {
        if (size < powl(1024, i + 1)) {
            return [NSString stringWithFormat:@"%@ %@", [NSNumber numberWithLongLong:size * 1.f / powl(1024, i)], units[i]];
        }
    }
    return [NSString stringWithFormat:@"%@ TB", [NSNumber numberWithLongLong:size * 1.f / powl(1024, 4)]];
}

@end
