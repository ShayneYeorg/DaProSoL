//
//  DPSClub.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "DPSClub.h"
#import "DPSProbability.h"

@implementation DPSClub

- (instancetype)initWithPlayerDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (DPSPlayer *)randomGetAPlayerAgainst:(DPSPlayer *)player {
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

- (DPSPlayer *)randomGetAPlayerAgainstGoalKeeper {
    DPSPlayer *player;
    NSInteger pb = [DPSProbability probability];
    if (pb <= 80) {
        player = [self randomGetAForward];
    } else if (pb <= 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetADefender];
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerAgainstDefender {
    DPSPlayer *player;
    NSInteger pb = [DPSProbability probability];
    if (pb <= 70) {
        player = [self randomGetAMidfielder];
    } else if (pb <= 80) {
        player = [self randomGetAForward];
    } else {
        player = [self randomGetADefender];
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerAgainstMidfielder {
    DPSPlayer *player;
    NSInteger pb = [DPSProbability probability];
    if (pb <= 70) {
        player = [self randomGetADefender];
    } else if (pb <= 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerAgainstForward {
    DPSPlayer *player;
    NSInteger pb = [DPSProbability probability];
    if (pb <= 70) {
        player = [self randomGetADefender];
    } else if (pb <= 95) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPSPlayer *)randomGetADefender {
    NSInteger num = [DPSProbability probability1to:4];
    DPSPlayer *player = [[DPSPlayer alloc]init];
    switch (num) {
        case 1:
            player = self.defender1;
            break;
            
        case 2:
            player = self.defender2;
            break;
            
        case 3:
            player = self.defender3;
            break;
            
        case 4:
            player = self.defender4;
            break;
    }
    return player;
}

- (DPSPlayer *)randomGetAMidfielder {
    NSInteger num = [DPSProbability probability1to:4];
    DPSPlayer *player = [[DPSPlayer alloc]init];
    switch (num) {
        case 1:
            player = self.midfielder1;
            break;
            
        case 2:
            player = self.midfielder2;
            break;
            
        case 3:
            player = self.midfielder3;
            break;
            
        case 4:
            player = self.midfielder4;
            break;
    }
    return player;
}

- (DPSPlayer *)randomGetAForward {
    NSInteger num = [DPSProbability probability1to:2];
    DPSPlayer *player = [[DPSPlayer alloc]init];
    switch (num) {
        case 1:
            player = self.forward1;
            break;
            
        case 2:
            player = self.forward2;
            break;
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerKeepTheBallFrom:(DPSPlayer *)player {
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

- (DPSPlayer *)randomGetAPlayerKeepTheBallFromGoalkeeper {
    NSInteger num = [DPSProbability probability];
    DPSPlayer *player;
    if (num <= 40) {
        player = [self randomGetADefender];
    } else if (num <= 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerKeepTheBallFromDefender {
    NSInteger num = [DPSProbability probability];
    DPSPlayer *player;
    if (num <= 60) {
        player = [self randomGetAMidfielder];
    } else if (num <= 80) {
        player = [self randomGetADefender];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerKeepTheBallFromMidfielder {
    NSInteger num = [DPSProbability probability];
    DPSPlayer *player;
    if (num <= 45) {
        player = [self randomGetAMidfielder];
    } else if (num <= 90) {
        player = [self randomGetADefender];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

- (DPSPlayer *)randomGetAPlayerKeepTheBallFromForward {
    NSInteger num = [DPSProbability probability];
    DPSPlayer *player;
    if (num <= 60) {
        player = [self randomGetADefender];
    } else if (num <= 90) {
        player = [self randomGetAMidfielder];
    } else {
        player = [self randomGetAForward];
    }
    return player;
}

@end

















