//
//  DPSClub.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPSPlayer.h"

@interface DPSClub : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) DPSPlayer *goalKeeper;
@property (nonatomic, strong) DPSPlayer *defender1;
@property (nonatomic, strong) DPSPlayer *defender2;
@property (nonatomic, strong) DPSPlayer *defender3;
@property (nonatomic, strong) DPSPlayer *defender4;
@property (nonatomic, strong) DPSPlayer *midfielder1;
@property (nonatomic, strong) DPSPlayer *midfielder2;
@property (nonatomic, strong) DPSPlayer *midfielder3;
@property (nonatomic, strong) DPSPlayer *midfielder4;
@property (nonatomic, strong) DPSPlayer *forward1;
@property (nonatomic, strong) DPSPlayer *forward2;

- (instancetype)initWithPlayerDict:(NSDictionary *)dict;
- (DPSPlayer *)randomGetAPlayerAgainst:(DPSPlayer *)player;
- (DPSPlayer *)randomGetAPlayerKeepTheBallFrom:(DPSPlayer *)player;

@end
