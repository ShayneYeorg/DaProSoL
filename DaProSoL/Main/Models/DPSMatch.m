//
//  DPSMatch.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/9/2.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "DPSMatch.h"
#import "DPSProbability.h"

@interface DPSMatch ()

@property (nonatomic, strong) DPSMatchResult *matchResult;

@end

@implementation DPSMatch

- (DPSMatchResult *)match:(DPSClub *)homeTeam against:(DPSClub *)awayTeam {
    self.matchResult = [[DPSMatchResult alloc]init];
    self.matchResult.homeTeam = homeTeam;
    self.matchResult.awayTeam = awayTeam;
    self.matchResult.homeScore = 0;
    self.matchResult.awayScore = 0;
    self.matchResult.goals = [NSMutableArray array];
    
    [self homeTeamAttack];
    [self awayTeamAttack];

    return self.matchResult;
}

- (void)homeTeamAttack {
    NSInteger homeCreateGK = [self createChances:self.matchResult.homeTeam.goalKeeper.creativity];
    self.matchResult.homeTeam.goalKeeper.created = homeCreateGK;
    [self playerAttack:self.matchResult.homeTeam.goalKeeper passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateGK];
    
    NSInteger homeCreateDef1 = [self createChances:self.matchResult.homeTeam.defender1.creativity];
    self.matchResult.homeTeam.defender1.created = homeCreateDef1;
    [self playerAttack:self.matchResult.homeTeam.defender1 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateDef1];
    
    NSInteger homeCreateDef2 = [self createChances:self.matchResult.homeTeam.defender2.creativity];
    self.matchResult.homeTeam.defender2.created = homeCreateDef2;
    [self playerAttack:self.matchResult.homeTeam.defender2 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateDef2];
    
    NSInteger homeCreateDef3 = [self createChances:self.matchResult.homeTeam.defender3.creativity];
    self.matchResult.homeTeam.defender3.created = homeCreateDef3;
    [self playerAttack:self.matchResult.homeTeam.defender3 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateDef3];
    
    NSInteger homeCreateDef4 = [self createChances:self.matchResult.homeTeam.defender4.creativity];
    self.matchResult.homeTeam.defender4.created = homeCreateDef4;
    [self playerAttack:self.matchResult.homeTeam.defender4 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateDef4];
    
    NSInteger homeCreateMid1 = [self createChances:self.matchResult.homeTeam.midfielder1.creativity];
    self.matchResult.homeTeam.midfielder1.created = homeCreateMid1;
    [self playerAttack:self.matchResult.homeTeam.midfielder1 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateMid1];
    
    NSInteger homeCreateMid2 = [self createChances:self.matchResult.homeTeam.midfielder2.creativity];
    self.matchResult.homeTeam.midfielder2.created = homeCreateMid2;
    [self playerAttack:self.matchResult.homeTeam.midfielder2 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateMid2];
    
    NSInteger homeCreateMid3 = [self createChances:self.matchResult.homeTeam.midfielder3.creativity];
    self.matchResult.homeTeam.midfielder3.created = homeCreateMid3;
    [self playerAttack:self.matchResult.homeTeam.midfielder3 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateMid3];
    
    NSInteger homeCreateMid4 = [self createChances:self.matchResult.homeTeam.midfielder4.creativity];
    self.matchResult.homeTeam.midfielder4.created = homeCreateMid4;
    [self playerAttack:self.matchResult.homeTeam.midfielder4 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateMid4];
    
    NSInteger homeCreateFor1 = [self createChances:self.matchResult.homeTeam.forward1.creativity];
    self.matchResult.homeTeam.forward1.created = homeCreateFor1;
    [self playerAttack:self.matchResult.homeTeam.forward1 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateFor1];
    
    NSInteger homeCreateFor2 = [self createChances:self.matchResult.homeTeam.forward2.creativity];
    self.matchResult.homeTeam.forward2.created = homeCreateFor2;
    [self playerAttack:self.matchResult.homeTeam.forward2 passedBy:nil inTeam:self.matchResult.homeTeam against:self.matchResult.awayTeam chances:homeCreateFor2];
}

- (void)awayTeamAttack {
    NSInteger awayCreateGK = [self createChances:self.matchResult.awayTeam.goalKeeper.creativity];
    self.matchResult.awayTeam.goalKeeper.created = awayCreateGK;
    [self playerAttack:self.matchResult.awayTeam.goalKeeper passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateGK];
    
    NSInteger awayCreateDef1 = [self createChances:self.matchResult.awayTeam.defender1.creativity];
    self.matchResult.awayTeam.defender1.created = awayCreateDef1;
    [self playerAttack:self.matchResult.awayTeam.defender1 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateDef1];
    
    NSInteger awayCreateDef2 = [self createChances:self.matchResult.awayTeam.defender2.creativity];
    self.matchResult.awayTeam.defender2.created = awayCreateDef2;
    [self playerAttack:self.matchResult.awayTeam.defender2 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateDef2];
    
    NSInteger awayCreateDef3 = [self createChances:self.matchResult.awayTeam.defender3.creativity];
    self.matchResult.awayTeam.defender3.created = awayCreateDef3;
    [self playerAttack:self.matchResult.awayTeam.defender3 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateDef3];
    
    NSInteger awayCreateDef4 = [self createChances:self.matchResult.awayTeam.defender4.creativity];
    self.matchResult.awayTeam.defender4.created = awayCreateDef4;
    [self playerAttack:self.matchResult.awayTeam.defender4 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateDef4];
    
    NSInteger awayCreateMid1 = [self createChances:self.matchResult.awayTeam.midfielder1.creativity];
    self.matchResult.awayTeam.midfielder1.created = awayCreateMid1;
    [self playerAttack:self.matchResult.awayTeam.midfielder1 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateMid1];
    
    NSInteger awayCreateMid2 = [self createChances:self.matchResult.awayTeam.midfielder2.creativity];
    self.matchResult.awayTeam.midfielder2.created = awayCreateMid2;
    [self playerAttack:self.matchResult.awayTeam.midfielder2 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateMid2];
    
    NSInteger awayCreateMid3 = [self createChances:self.matchResult.awayTeam.midfielder3.creativity];
    self.matchResult.awayTeam.midfielder3.created = awayCreateMid3;
    [self playerAttack:self.matchResult.awayTeam.midfielder3 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateMid3];
    
    NSInteger awayCreateMid4 = [self createChances:self.matchResult.awayTeam.midfielder4.creativity];
    self.matchResult.awayTeam.midfielder4.created = awayCreateMid4;
    [self playerAttack:self.matchResult.awayTeam.midfielder4 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateMid4];
    
    NSInteger awayCreateFor1 = [self createChances:self.matchResult.awayTeam.forward1.creativity];
    self.matchResult.awayTeam.forward1.created = awayCreateFor1;
    [self playerAttack:self.matchResult.awayTeam.forward1 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateFor1];
    
    NSInteger awayCreateFor2 = [self createChances:self.matchResult.awayTeam.forward2.creativity];
    self.matchResult.awayTeam.forward2.created = awayCreateFor2;
    [self playerAttack:self.matchResult.awayTeam.forward2 passedBy:nil inTeam:self.matchResult.awayTeam against:self.matchResult.homeTeam chances:awayCreateFor2];
}

- (void)playerAttack:(DPSPlayer *)player passedBy:(DPSPlayer *)passer inTeam:(DPSClub *)team against:(DPSClub *)againstTeam chances:(NSInteger)chances {
    if (chances == 0) return;
    
    if (passer) {
        DPSLog(@"%@传球给了%@", passer.name, player.name);
    } else {
        DPSLog(@"%@控制住了球",player.name);
    }
    
    for (int i=0; i<chances; i++) {
        player.touches += 1;
        if (player.aggressive >= [DPSProbability probability]) {
            //shoot
            player.shoots += 1;
            againstTeam.goalKeeper.saves += 1;
            if (player.shootAbility >= againstTeam.goalKeeper.saveAbility) {
                //depend on the shooter
                if (player.shootAbility+1 > 99-againstTeam.goalKeeper.saveAbility) {
                    [self player:player passedBy:passer inTeam:team shootAgainstGoalKeeper:againstTeam.goalKeeper];
                    
                } else {
                    [self goalKeeper:againstTeam.goalKeeper saveAgainstPlayer:player passer:passer inTeam:team];
                }
                
            } else {
                //depend on the saver
                if (againstTeam.goalKeeper.saveAbility+1 > 99-player.shootAbility) {
                    [self goalKeeper:againstTeam.goalKeeper saveAgainstPlayer:player passer:passer inTeam:team];
                    
                } else {
                    [self player:player passedBy:passer inTeam:team shootAgainstGoalKeeper:againstTeam.goalKeeper];
                }
            }
            
        } else {
            //pass
            player.passes += 1;
            DPSPlayer *defender = [againstTeam randomGetAPlayerAgainst:player];
            defender.tackles += 1;
            if (player.passAbility >= defender.defendAbility) {
                //depend on the passer
                if (player.passAbility+1 > 99-defender.defendAbility) {
                    [self player:player inTeam:team passAgainstDefender:defender inTeam:againstTeam];
                    
                } else {
                    [self defender:defender inTeam:againstTeam defendAgainstPasser:player inTeam:team];
                }
                
            } else {
                //depend on the defender
                if (defender.defendAbility+1 > 99-player.passAbility) {
                    [self defender:defender inTeam:againstTeam defendAgainstPasser:player inTeam:team];
                    
                } else {
                    [self player:player inTeam:team passAgainstDefender:defender inTeam:againstTeam];
                }
            }
            
        }
    }
}

- (void)player:(DPSPlayer *)player inTeam:(DPSClub *)team passAgainstDefender:(DPSPlayer *)defender inTeam:(DPSClub *)againstTeam {
    if([player pass]) {
        player.passeSuccess += 1;
        [self playerAttack:[team randomGetAPlayerKeepTheBallFrom:player] passedBy:player inTeam:team against:againstTeam chances:1];
        
    } else {
        defender.tackleSuccess += 1;
        DPSLog(@"%@抢断了%@的球", defender.name, player.name);
    }
}

- (void)defender:(DPSPlayer *)defender inTeam:(DPSClub *)team defendAgainstPasser:(DPSPlayer *)player inTeam:(DPSClub *)againstTeam {
    if([player defend]) {
        defender.tackleSuccess += 1;
        DPSLog(@"%@抢断了%@的球", defender.name, player.name);
        
    } else {
        player.passeSuccess += 1;
        [self playerAttack:[team randomGetAPlayerKeepTheBallFrom:player] passedBy:player inTeam:team against:againstTeam chances:1];
    }
}

- (void)player:(DPSPlayer *)player passedBy:(DPSPlayer *)passer inTeam:(DPSClub *)team shootAgainstGoalKeeper:(DPSPlayer *)goalKeeper {
    DPSLog(@"%@射门！！", player.name);
    if([player shoot]) {
        DPSLog(@"%@进球，助攻者是%@", player.name, passer.name);
        player.goals += 1;
        passer.asists += 1;
        [self goalBy:player passedBy:passer inTeam:team];
        
    } else {
        DPSLog(@"%@阻挡了进球", goalKeeper.name);
        goalKeeper.saveSuccess += 1;
    }
}

- (void)goalKeeper:(DPSPlayer *)goalKeeper saveAgainstPlayer:(DPSPlayer *)player passer:(DPSPlayer *)passer inTeam:(DPSClub *)team {
    DPSLog(@"%@射门！！", player.name);
    if ([goalKeeper save]) {
        DPSLog(@"%@阻挡了进球", goalKeeper.name);
        goalKeeper.saveSuccess += 1;
        
    } else {
        DPSLog(@"%@进球，助攻者是%@", player.name, passer.name);
        player.goals += 1;
        passer.asists += 1;
        [self goalBy:player passedBy:passer inTeam:team];
    }
}

- (void)goalBy:(DPSPlayer *)player passedBy:(DPSPlayer *)passer inTeam:(DPSClub *)team {
    if (team == self.matchResult.homeTeam) {
        self.matchResult.homeScore += 1;
        DPSGoal *goal = [[DPSGoal alloc]init];
        goal.isHomeTeam = YES;
        goal.scorePlayerNum = player.num;
        goal.scorePlayer = player.name;
        goal.assistPlayerNum = passer.num;
        goal.assistPlayer = passer.name;
        goal.time = [self goalTime];
        [self.matchResult.goals addObject:goal];
        
    } else {
        self.matchResult.awayScore += 1;
        DPSGoal *goal = [[DPSGoal alloc]init];
        goal.isHomeTeam = NO;
        goal.scorePlayerNum = player.num;
        goal.scorePlayer = player.name;
        goal.assistPlayerNum = passer.num;
        goal.assistPlayer = passer.name;
        goal.time = [self goalTime];
        [self.matchResult.goals addObject:goal];
    }
}

- (NSString *)goalTime {
    NSInteger min = [DPSProbability probability0to:95];
    if (min == 0) {
        return @"45'+";
    } else if (min > 90 && min <= 92) {
        return @"45'+";
    } else if (min > 92 && min <= 95) {
        return @"90'+";
    }
    
    return [NSString stringWithFormat:@"%ld'", (long)min];
}

- (NSInteger)createChances:(NSInteger)creativity {
    return creativity;
}

@end
