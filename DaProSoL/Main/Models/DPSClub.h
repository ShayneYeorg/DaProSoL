//
//  DPSClub.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPlayer.h"

@interface DPSClub : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) DPPlayer *goalKeeper;
@property (nonatomic, strong) DPPlayer *defender1;
@property (nonatomic, strong) DPPlayer *defender2;
@property (nonatomic, strong) DPPlayer *defender3;
@property (nonatomic, strong) DPPlayer *defender4;
@property (nonatomic, strong) DPPlayer *midfielder1;
@property (nonatomic, strong) DPPlayer *midfielder2;
@property (nonatomic, strong) DPPlayer *midfielder3;
@property (nonatomic, strong) DPPlayer *midfielder4;
@property (nonatomic, strong) DPPlayer *forward1;
@property (nonatomic, strong) DPPlayer *forward2;

- (instancetype)initWithPlayerDict:(NSDictionary *)dict;
- (DPPlayer *)randomGetAPlayerAgainst:(DPPlayer *)player;
- (DPPlayer *)randomGetAPlayerKeepTheBallFrom:(DPPlayer *)player;

@end
