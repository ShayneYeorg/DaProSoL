//
//  DPMatchResult.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "DPMatchResult.h"

@implementation DPMatchResult

- (NSString *)description {
    NSString *returnStr = [NSString stringWithFormat:@"\n\n\n-------------------------------------------------\n%@  %zd : %zd  %@", self.homeTeam.name, self.homeScore, self.awayScore, self.awayTeam.name];
    
    for (int n=0; n<self.goals.count; n++) {
        DPGoal *goal = self.goals[n];
        NSString *dis = @"                        ";
        if ([goal isHomeTeam]){
            dis = @"";
        }
        NSString *scoreInfo = [NSString stringWithFormat:@"\n%@%@ %@ %@", dis, goal.time, goal.scorePlayerNum, goal.scorePlayer];
        returnStr = [returnStr stringByAppendingString:scoreInfo];
        
        if (goal.asisPlayer) {
            NSString *assistInfo = [NSString stringWithFormat:@"(%@)", goal.asisPlayer];
            returnStr = [returnStr stringByAppendingString:assistInfo];
        }
    }
    returnStr = [returnStr stringByAppendingString:@"\n-------------------------------------------------\n"];
    
    return returnStr;
}

- (void)printPlayersTechnicalInfo {
    NSString *printStr = [NSString stringWithFormat:@"\n-------------------------------------------------\n"];
    
    NSString *homeTeamName = [NSString stringWithFormat:@"%@\n", self.homeTeam.name];
    printStr = [printStr stringByAppendingString:homeTeamName];
    NSString *title = [NSString stringWithFormat:@"     created  touched  shoot  goal  assist  passes  tackles  saves\n"];
    printStr = [printStr stringByAppendingString:title];
    
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.goalKeeper]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.defender1]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.defender2]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.defender3]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.defender4]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.midfielder1]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.midfielder2]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.midfielder3]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.midfielder4]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.forward1]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.homeTeam.forward2]];
    
    NSString *awayTeamName = [NSString stringWithFormat:@"\n%@\n", self.awayTeam.name];
    printStr = [printStr stringByAppendingString:awayTeamName];
    NSString *title2 = [NSString stringWithFormat:@"     created  touched  shoot  goal  assist  passes  tackles  saves\n"];
    printStr = [printStr stringByAppendingString:title2];
    
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.goalKeeper]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.defender1]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.defender2]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.defender3]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.defender4]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.midfielder1]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.midfielder2]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.midfielder3]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.midfielder4]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.forward1]];
    printStr = [printStr stringByAppendingString:[self playerTechInfo:self.awayTeam.forward2]];
    
    DPSLog(@"%@", printStr);
}


- (NSString *)playerTechInfo:(DPPlayer *)player {
    NSString *retStr = [NSString stringWithFormat:@"%@      %zd        %zd       %zd      %zd     %zd       %zd/%zd     %zd/%zd     %zd/%zd\n", player.name, player.created, player.touches, player.shoots, player.goals, player.asists, player.passeSuccess, player.passes, player.tackleSuccess, player.tackles, player.saveSuccess, player.saves];
    return retStr;
}



@end











