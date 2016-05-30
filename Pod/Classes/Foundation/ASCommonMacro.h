
#ifndef SingletonDeclare
#   define SingletonDeclare + (instancetype)sharedInstance;
#endif

#ifndef SingletonImplement
#   define SingletonImplement \
    + (instancetype)sharedInstance {\
        static dispatch_once_t once; \
        static id __singleton__; \
        dispatch_once( &once, ^{ __singleton__ = [[self alloc] init]; } ); \
        return __singleton__; \
    }
#endif
