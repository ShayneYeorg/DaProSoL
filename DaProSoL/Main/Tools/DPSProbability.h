//
//  DPSProbability.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPSProbability : NSObject

+ (NSInteger)probability;

//返回1到n的任意整数
+ (NSInteger)probability1to:(NSInteger)n;

//只供DPSPlayerName使用
+ (NSInteger)probability1To111;

@end

