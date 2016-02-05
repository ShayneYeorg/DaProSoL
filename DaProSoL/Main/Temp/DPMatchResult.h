//
//  DPMatchResult.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPGoal.h"
#import "DPSClub.h"

@interface DPMatchResult : NSObject

@property (nonatomic, strong) DPSClub *homeTeam;
@property (nonatomic, strong) DPSClub *awayTeam;
@property (nonatomic, assign) NSInteger homeScore;
@property (nonatomic, assign) NSInteger awayScore;
@property (nonatomic, strong) NSMutableArray *goals;

- (void)printPlayersTechnicalInfo;

@end
