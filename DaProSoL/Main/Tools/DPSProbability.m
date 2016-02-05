//
//  DPSProbability.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "DPSProbability.h"

@implementation DPSProbability

+ (NSInteger)probability {
    return (arc4random()%100);
}

+ (NSInteger)probability0to:(NSInteger)n {
    return (arc4random()%n);
}

+ (NSInteger)probability0To110 {
    return (arc4random()%111);
}

@end

