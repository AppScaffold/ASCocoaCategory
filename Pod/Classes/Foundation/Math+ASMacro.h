//
//  Math+ASMacro.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14/12/1.
//  Copyright (c) 2014年 Taobao. All rights reserved.
//

#if defined(__LP64__) && __LP64__
#   define CGFloor floor
#else
#   define CGFloor floorf
#endif

#ifndef DEGREES_TO_RADIANS
#   define DEGREES_TO_RADIANS(degrees) (degrees * M_PI / 180)
#endif

#ifndef MAX3
#   define MAX3(a, b, c) ((a) > (b) ? ((a) > (c) ? (a) : (c)) : ((b) > (c) ? (b) : (c)))
#endif

#ifndef MIN3
#   define MIN3(a, b, c) ((a) < (b) ? ((a) < (c) ? (a) : (c)) : ((b) < (c) ? (b) : (c)))
#endif

#ifndef RANGE
#   define RANGE(min, value, max) MAX(MIN((max), (value)), (min))
#endif
