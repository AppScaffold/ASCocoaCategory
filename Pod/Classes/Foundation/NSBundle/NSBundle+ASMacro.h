#ifndef APPNAME
#   define APPNAME  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]
#endif

#ifndef APPVERSION
#   define APPVERSION  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#endif

#ifndef APPBUILD
#   define APPBUILD  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
#endif
