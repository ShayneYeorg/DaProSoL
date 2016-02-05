//
//  DPSConstant.h
//  DaProSoL
//
//  Created by 杨淳引 on 16/2/5.
//  Copyright © 2016年 ShayneYeorg. All rights reserved.
//



#ifdef DEBUG
#define DPSLog(format, ...) NSLog( @"<%@:(%d)> %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(format),  ##__VA_ARGS__] )
#else
#define DPSLog(format, ...)
#endif


//color
#define RGB(r, g, b) [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]


//设备屏幕尺寸
#define kScreen_Height ([UIScreen mainScreen].bounds.size.height)
#define kScreen_Width ([UIScreen mainScreen].bounds.size.width)
