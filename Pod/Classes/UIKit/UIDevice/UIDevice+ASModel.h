//
//  UIDevice+ASModel.h
//  ASCocoaCategory
//
//  Created by Whirlwind on 2017/11/16.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSUInteger, UIDeviceType) {
    UIDeviceUnknown     = 0,
    UIDeviceIPhone      = 1,
    UIDeviceIPodTouch   = 2,
    UIDeviceIPad        = 3,
    UIDeviceAppleTV     = 4,
    UIDeviceAppleWatch  = 5
};

typedef NS_OPTIONS(NSUInteger, UIDeviceIPhoneModel) {
    iPhone_2G       = 1 << 0,
    iPhone_3G       = 1 << 1,
    iPhone_3GS      = 1 << 2,

    iPhone_4        = 1 << 3,
    iPhone_4S       = 1 << 4,

    iPhone_5        = 1 << 5,
    iPhone_5C       = 1 << 6,
    iPhone_5S       = 1 << 7,

    iPhone_6        = 1 << 8,
    iPhone_6_Plus   = 1 << 9,
    iPhone_6S       = 1 << 10,
    iPhone_6S_Plus  = 1 << 11,
    iPhone_SE       = 1 << 12,

    iPhone_7        = 1 << 13,
    iPhone_7_Plus   = 1 << 14,

    iPhone_8        = 1 << 15,
    iPhone_8_Plus   = 1 << 16,

    iPhone_X        = 1 << 17,
};

typedef NS_OPTIONS(NSUInteger, UIDeviceIPodModel) {
    iPodTouch_1G   = 1 << 0,
    iPodTouch_2G   = 1 << 1,
    iPodTouch_3G   = 1 << 2,
    iPodTouch_4G   = 1 << 3,
    iPodTouch_5G   = 1 << 4,
    iPodTouch_6G   = 1 << 5,
};

typedef NS_OPTIONS(long long, UIDeviceIPadModel) {
    iPad_1          = 1 << 0,
    iPad_2          = 1 << 1,
    iPad_3          = 1 << 2,
    iPad_4          = 1 << 3,
    iPad_5          = 1 << 4,
    iPad            = (1 << 16) - 1,

    iPad_mini_1     = 1 << 16,
    iPad_mini_2     = 1 << 17,
    iPad_mini_3     = 1 << 18,
    iPad_mini_4     = 1 << 19,
    iPad_mini       = ((1 << 16) - 1) << 16,

    iPad_Air_1      = 1 << 32,
    iPad_Air_2      = 1 << 33,
    iPad_Air        = ((1 << 16) - 1) << 32,

    iPad_Pro_1G_9_7     = 1 << 64,
    iPad_Pro_1G_12_9    = 1 << 65,
    iPad_Pro_2G_10_5    = 1 << 66,
    iPad_Pro_2G_12_9    = 1 << 67,
    iPad_Pro            = ((1 << 16) - 1) << 64,
};

typedef NS_OPTIONS(NSUInteger, UIDeviceAppleTVModel) {
    AppleTV_1G     = 1 << 0,
    AppleTV_2G     = 1 << 1,
    AppleTV_3G     = 1 << 2,
    AppleTV_4G     = 1 << 4,
    AppleTV_4K     = 1 << 5,
};

typedef NS_OPTIONS(NSUInteger, UIDeviceAppleWatchModel) {
    AppleWatch_38  = 1 << 0,
    AppleWatch_42  = 1 << 1,
    AppleWatch     = AppleWatch_38 | AppleWatch_42,

    AppleWatch_Series_1_38  = 1 << 2,
    AppleWatch_Series_1_42  = 1 << 3,
    AppleWatch_Series_1     = AppleWatch_Series_1_38 | AppleWatch_Series_1_42,

    AppleWatch_Series_2_38  = 1 << 4,
    AppleWatch_Series_2_42  = 1 << 5,
    AppleWatch_Series_2     = AppleWatch_Series_2_38 | AppleWatch_Series_2_42,

    AppleWatch_Series_3_38  = 1 << 6,
    AppleWatch_Series_3_42  = 1 << 7,
    AppleWatch_Series_3     = AppleWatch_Series_3_38 | AppleWatch_Series_3_42,
};

typedef NS_OPTIONS(NSUInteger, UIDeviceNetworkType) {
    UIDeviceNetworkUnsupport   = 0,
    UIDeviceGSM                = 1 << 0,
    UIDeviceCDMA               = 1 << 1,
    UIDeviceCellular           = UIDeviceGSM | UIDeviceCDMA,
    UIDeviceWIFI               = 1 << 10,
    UIDeviceGPS                = 1 << 20,
};

@interface UIDevice (ASModel)

@property (nonatomic, assign, readonly) UIDeviceType as_type;
@property (nonatomic, strong, readonly) NSString *as_modelName;
@property (nonatomic, strong, readonly) NSString *as_modelFullName;
@property (nonatomic, assign, readonly) long long as_modelType;
@property (nonatomic, assign, readonly) UIDeviceNetworkType as_networkType;

@end
