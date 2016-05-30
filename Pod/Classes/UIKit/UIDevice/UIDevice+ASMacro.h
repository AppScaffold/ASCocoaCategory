
#define IS_RUN_IN_IPAD()  (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define SYSTEM_VERSION [[UIDevice currentDevice] as_systemVersionCached]

#define SYSTEM_VERSION_FLOAT [SYSTEM_VERSION floatValue]

#define SYSTEM_IOS7_OR_LATER (SYSTEM_VERSION_FLOAT >= 7)

#define SYSTEM_IOS8_OR_LATER (SYSTEM_VERSION_FLOAT >= 8)
