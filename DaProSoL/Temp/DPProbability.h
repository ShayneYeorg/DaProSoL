//
//  DPProbability.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPProbability : NSObject

+ (NSInteger)probability;

//返回0到n的任意整数
+ (NSInteger)probability0to:(NSInteger)n;

//只供DPPlayerName使用
+ (NSInteger)probability0To110;

@end
