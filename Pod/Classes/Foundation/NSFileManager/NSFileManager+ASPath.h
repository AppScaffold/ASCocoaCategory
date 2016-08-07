//
//  NSFileManager+ASPath.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-11.
//  Copyright (c) 2016 AppScaffold. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (ASPath)

/**-------------------------------------------------------------------------------------
 @name Getting Standard Paths
 ---------------------------------------------------------------------------------------
 */

/** Determines the path to the current application's main bundle.

 @return The path to the app's main bundle folder.
 */

+ (NSString *)as_appPath;

/** Determines the path to the Library/Caches folder in the current application's sandbox.

 The return value is cached on the first call.

 @return The path to the app's Caches folder.
 */
+ (NSString *)as_cachesPath;


/** Determines the path to the Documents folder in the current application's sandbox.

 The return value is cached on the first call.

 @return The path to the app's Documents folder.
 */
+ (NSString *)as_documentPath;

/**-------------------------------------------------------------------------------------
 @name Getting Temporary Paths
 ---------------------------------------------------------------------------------------
 */

/** Determines the path for temporary files in the current application's sandbox.

 The return value is cached on the first call. This value is different in Simulator than on the actual device. In Simulator you get a reference to /tmp wheras on iOS devices it is a special folder inside the application folder.

 @return The path to the app's folder for temporary files.
 */
+ (NSString *)as_temporaryPath;


/** Creates a unique filename that can be used for one temporary file or folder.

 The returned string is different on every call. It is created by combining the result from temporaryPath with a unique UUID.

 @return The generated temporary path.
 */
+ (NSString *)as_pathForTemporaryFile;

/**-------------------------------------------------------------------------------------
 @name iCloud backup
 ---------------------------------------------------------------------------------------
 */

/** Add flag to skip icloud sync.
 */
+ (BOOL)as_addSkipBackupAttributeToItemAtPath:(NSString *)filePathString;

/** Get File Size
 *
 *  It's faster than -[NSFileManager attributesOfItemAtPath:error:]
 */
+ (unsigned long long int)as_fileSizeAtPath:(NSString *)filePath;

+ (unsigned long long int)as_folderSizeAtPath:(NSString *)folderPath;

+ (NSString *)as_prettySizeStringForSize:(unsigned long long int)size;

@end
