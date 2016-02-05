//
//  DPClub.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "DPClub.h"
#import "DPProbability.h"

@implementation DPClub

- (instancetype)initWithPlayerDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (DPPlayer *)randomGetAPlayerAgainst:(DPPlayer *)player {
    if (player.position == Player_Position_GoalKeeper) {
        return [self randomGetAPlayerAgainstGoalKeeper];
        
    } else if (player.position == Player_Position_Defender) {
        return [self randomGetAPlayerAgainstDefender];
        
    } else if (player.position == Player_Position_Midfielder) {
        return [self randomGetAPlayerAgainstMidfielder];
        
    } else {
        return [self randomGetAPlayerAgainstForward];
    }
}

- (DPPlayer *)randomGetAPlayerAgainstGoalKeeper {
    DPPlayer *player;
    NSInteger pb = [DPProbability probability];
    if (pb < 80) {
        player = [self randomGetAForward];
    } else if (pb < 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetADefender];
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerAgainstDefender {
    DPPlayer *player;
    NSInteger pb = [DPProbability probability];
    if (pb < 70) {
        player = [self randomGetAMidfielder];
    } else if (pb < 80) {
        player = [self randomGetAForward];
    } else {
        player = [self randomGetADefender];
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerAgainstMidfielder {
    DPPlayer *player;
    NSInteger pb = [DPProbability probability];
    if (pb < 70) {
        player = [self randomGetADefender];
    } else if (pb < 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerAgainstForward {
    DPPlayer *player;
    NSInteger pb = [DPProbability probability];
    if (pb < 70) {
        player = [self randomGetADefender];
    } else if (pb < 95) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPPlayer *)randomGetADefender {
    NSInteger num = [DPProbability probability0to:3];
    DPPlayer *player = [[DPPlayer alloc]init];
    switch (num) {
        case 0:
            player = self.defender1;
            break;
            
        case 1:
            player = self.defender2;
            break;
            
        case 2:
            player = self.defender3;
            break;
            
        case 3:
            player = self.defender4;
            break;
    }
    return player;
}

- (DPPlayer *)randomGetAMidfielder {
    NSInteger num = [DPProbability probability0to:3];
    DPPlayer *player = [[DPPlayer alloc]init];
    switch (num) {
        case 0:
            player = self.midfielder1;
            break;
            
        case 1:
            player = self.midfielder2;
            break;
            
        case 2:
            player = self.midfielder3;
            break;
            
        case 3:
            player = self.midfielder4;
            break;
    }
    return player;
}

- (DPPlayer *)randomGetAForward {
    NSInteger num = [DPProbability probability0to:1];
    DPPlayer *player = [[DPPlayer alloc]init];
    switch (num) {
        case 0:
            player = self.forward1;
            break;
            
        case 1:
            player = self.forward2;
            break;
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerKeepTheBallFrom:(DPPlayer *)player {
    PlayerPosition position = player.position;
    if (position == Player_Position_GoalKeeper) {
        return [self randomGetAPlayerKeepTheBallFromGoalkeeper];
        
    } else if (position == Player_Position_Defender) {
        return [self randomGetAPlayerKeepTheBallFromDefender];
        
    } else if (position == Player_Position_Midfielder) {
        return [self randomGetAPlayerKeepTheBallFromMidfielder];
        
    } else {
        return [self randomGetAPlayerKeepTheBallFromForward];
    }
}

- (DPPlayer *)randomGetAPlayerKeepTheBallFromGoalkeeper {
    NSInteger num = [DPProbability probability];
    DPPlayer *player;
    if (num < 40) {
        player = [self randomGetADefender];
    } else if (num < 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerKeepTheBallFromDefender {
    NSInteger num = [DPProbability probability];
    DPPlayer *player;
    if (num < 60) {
        player = [self randomGetAMidfielder];
    } else if (num < 80) {
        player = [self randomGetADefender];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerKeepTheBallFromMidfielder {
    NSInteger num = [DPProbability probability];
    DPPlayer *player;
    if (num < 45) {
        player = [self randomGetAMidfielder];
    } else if (num < 90) {
        player = [self randomGetADefender];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPPlayer *)randomGetAPlayerKeepTheBallFromForward {
    NSInteger num = [DPProbability probability];
    DPPlayer *player;
    if (num < 60) {
        player = [self randomGetADefender];
    } else if (num < 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

@end

















