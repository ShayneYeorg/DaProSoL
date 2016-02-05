//
//  DPPlayer.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum _PlayerPosition {
    Player_Position_GoalKeeper = 0,
    Player_Position_Defender   = 1,
    Player_Position_Midfielder = 2,
    Player_Position_Forward    = 3
} PlayerPosition;

@interface DPPlayer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) PlayerPosition position;//0 1 2 3对应4个位置
@property (nonatomic, strong) NSString *num;
@property (nonatomic, assign) NSInteger creativity;
@property (nonatomic, assign) NSInteger aggressive;
//@property (nonatomic, strong) NSString *preferNum;
//@property (nonatomic, assign) NSInteger firstSeason;

@property (nonatomic, assign) NSInteger shootAbility;
@property (nonatomic, assign) NSInteger passAbility;
@property (nonatomic, assign) NSInteger defendAbility;
@property (nonatomic, assign) NSInteger saveAbility;

@property (nonatomic, assign) NSInteger created;
@property (nonatomic, assign) NSInteger touches;
@property (nonatomic, assign) NSInteger shoots;
@property (nonatomic, assign) NSInteger goals;
@property (nonatomic, assign) NSInteger passes;
@property (nonatomic, assign) NSInteger passeSuccess;
@property (nonatomic, assign) NSInteger asists;
@property (nonatomic, assign) NSInteger tackles;
@property (nonatomic, assign) NSInteger tackleSuccess;
@property (nonatomic, assign) NSInteger saves;
@property (nonatomic, assign) NSInteger saveSuccess;

- (instancetype)initWithDict:(NSDictionary *)dict;
- (BOOL)shoot;
- (BOOL)pass;
- (BOOL)defend;
- (BOOL)save;

@end
