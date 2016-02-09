//
//  DPSTestData.m
//  DaProSoL
//
//  Created by 杨淳引 on 16/1/26.
//  Copyright © 2016年 ShayneYeorg. All rights reserved.
//

#import "DPSTestData.h"

#define kGoalkeeperCreativity @"0"
#define kDefenderCreativity @"1"
#define kMidfielderCreativity @"2"
#define kForwardCreativity @"1"
#define kGoalkeeperCreativity2 @"0"
#define kDefenderCreativity2 @"1"
#define kMidfielderCreativity2 @"2"
#define kForwardCreativity2 @"1"

@implementation DPSTestData

+ (DPSClub *)getStrongTeam:(NSString *)teamName {
    
    DPSPlayer *GoalKeeper = [DPSTestData getStrongGoalKeeper:@"hGK" num:@"1"];
    
    DPSPlayer *Defender1 = [DPSTestData getStrongDefender:@"hD1" num:@"2"];
    
    DPSPlayer *Defender2 = [DPSTestData getStrongDefender:@"hD2" num:@"3"];
    
    DPSPlayer *Defender3 = [DPSTestData getStrongDefender:@"hD3" num:@"4"];
    
    DPSPlayer *Defender4 = [DPSTestData getStrongDefender:@"hD4" num:@"5"];
    
    DPSPlayer *Midefielder1 = [DPSTestData getStrongMidfielder:@"hM1" num:@"6"];
    
    DPSPlayer *Midefielder2 = [DPSTestData getStrongMidfielder:@"hM2" num:@"7"];
    
    DPSPlayer *Midefielder3 = [DPSTestData getStrongMidfielder:@"hM3" num:@"8"];
    
    DPSPlayer *Midefielder4 = [DPSTestData getStrongMidfielder:@"hM4" num:@"10"];
    
    DPSPlayer *Forward1 = [DPSTestData getStrongForward:@"hF1" num:@"9"];
    
    DPSPlayer *Forward2 = [DPSTestData getStrongForward:@"hF2" num:@"11"];
    
    DPSClub *team = [[DPSClub alloc]initWithPlayerDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                                      teamName,@"name",
                                                      GoalKeeper,@"goalKeeper",
                                                      Defender1,@"defender1",
                                                      Defender2,@"defender2",
                                                      Defender3,@"defender3",
                                                      Defender4,@"defender4",
                                                      Midefielder1,@"midfielder1",
                                                      Midefielder2,@"midfielder2",
                                                      Midefielder3,@"midfielder3",
                                                      Midefielder4,@"midfielder4",
                                                      Forward1,@"forward1",
                                                      Forward2,@"forward2",
                                                      nil]];
    
    return team;
}

+ (DPSClub *)getStrongTeam2:(NSString *)teamName {
    
    DPSPlayer *GoalKeeper = [DPSTestData getStrongGoalKeeper:@"aGK" num:@"1"];
    
    DPSPlayer *Defender1 = [DPSTestData getStrongDefender:@"aD1" num:@"2"];
    
    DPSPlayer *Defender2 = [DPSTestData getStrongDefender:@"aD2" num:@"3"];
    
    DPSPlayer *Defender3 = [DPSTestData getStrongDefender:@"aD3" num:@"4"];
    
    DPSPlayer *Defender4 = [DPSTestData getStrongDefender:@"aD4" num:@"5"];
    
    DPSPlayer *Midefielder1 = [DPSTestData getStrongMidfielder:@"aM1" num:@"6"];
    
    DPSPlayer *Midefielder2 = [DPSTestData getStrongMidfielder:@"aM2" num:@"7"];
    
    DPSPlayer *Midefielder3 = [DPSTestData getStrongMidfielder:@"aM3" num:@"8"];
    
    DPSPlayer *Midefielder4 = [DPSTestData getStrongMidfielder:@"aM4" num:@"10"];
    
    DPSPlayer *Forward1 = [DPSTestData getStrongForward:@"aF1" num:@"9"];
    
    DPSPlayer *Forward2 = [DPSTestData getStrongForward:@"aF2" num:@"11"];
    
    DPSClub *team = [[DPSClub alloc]initWithPlayerDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                                        teamName,@"name",
                                                        GoalKeeper,@"goalKeeper",
                                                        Defender1,@"defender1",
                                                        Defender2,@"defender2",
                                                        Defender3,@"defender3",
                                                        Defender4,@"defender4",
                                                        Midefielder1,@"midfielder1",
                                                        Midefielder2,@"midfielder2",
                                                        Midefielder3,@"midfielder3",
                                                        Midefielder4,@"midfielder4",
                                                        Forward1,@"forward1",
                                                        Forward2,@"forward2",
                                                        nil]];
    
    return team;
}

+ (DPSClub *)getMediumTeam:(NSString *)teamName {
    
    DPSPlayer *GoalKeeper = [DPSTestData getMediumGoalKeeper:@"hGK" num:@"1"];
    
    DPSPlayer *Defender1 = [DPSTestData getMediumDefender:@"hD1" num:@"2"];
    
    DPSPlayer *Defender2 = [DPSTestData getMediumDefender:@"hD2" num:@"3"];
    
    DPSPlayer *Defender3 = [DPSTestData getMediumDefender:@"hD3" num:@"4"];
    
    DPSPlayer *Defender4 = [DPSTestData getMediumDefender:@"hD4" num:@"5"];
    
    DPSPlayer *Midefielder1 = [DPSTestData getMediumMidfielder:@"hM1" num:@"6"];
    
    DPSPlayer *Midefielder2 = [DPSTestData getMediumMidfielder:@"hM2" num:@"7"];
    
    DPSPlayer *Midefielder3 = [DPSTestData getMediumMidfielder:@"hM3" num:@"8"];
    
    DPSPlayer *Midefielder4 = [DPSTestData getMediumMidfielder:@"hM4" num:@"10"];
    
    DPSPlayer *Forward1 = [DPSTestData getMediumForward:@"hF1" num:@"9"];
    
    DPSPlayer *Forward2 = [DPSTestData getMediumForward:@"hF2" num:@"11"];
    
    DPSClub *team = [[DPSClub alloc]initWithPlayerDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                                            teamName,@"name",
                                                            GoalKeeper,@"goalKeeper",
                                                            Defender1,@"defender1",
                                                            Defender2,@"defender2",
                                                            Defender3,@"defender3",
                                                            Defender4,@"defender4",
                                                            Midefielder1,@"midfielder1",
                                                            Midefielder2,@"midfielder2",
                                                            Midefielder3,@"midfielder3",
                                                            Midefielder4,@"midfielder4",
                                                            Forward1,@"forward1",
                                                            Forward2,@"forward2",
                                                            nil]];
    
    return team;
}

+ (DPSClub *)getMediumTeam2:(NSString *)teamName {
    
    DPSPlayer *GoalKeeper = [DPSTestData getMediumGoalKeeper:@"aGK" num:@"1"];
    
    DPSPlayer *Defender1 = [DPSTestData getMediumDefender:@"aD1" num:@"2"];
    
    DPSPlayer *Defender2 = [DPSTestData getMediumDefender:@"aD2" num:@"3"];
    
    DPSPlayer *Defender3 = [DPSTestData getMediumDefender:@"aD3" num:@"4"];
    
    DPSPlayer *Defender4 = [DPSTestData getMediumDefender:@"aD4" num:@"5"];
    
    DPSPlayer *Midefielder1 = [DPSTestData getMediumMidfielder:@"aM1" num:@"6"];
    
    DPSPlayer *Midefielder2 = [DPSTestData getMediumMidfielder:@"aM2" num:@"7"];
    
    DPSPlayer *Midefielder3 = [DPSTestData getMediumMidfielder:@"aM3" num:@"8"];
    
    DPSPlayer *Midefielder4 = [DPSTestData getMediumMidfielder:@"aM4" num:@"10"];
    
    DPSPlayer *Forward1 = [DPSTestData getMediumForward:@"aF1" num:@"9"];
    
    DPSPlayer *Forward2 = [DPSTestData getMediumForward:@"aF2" num:@"11"];
    
    DPSClub *team = [[DPSClub alloc]initWithPlayerDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                                        teamName,@"name",
                                                        GoalKeeper,@"goalKeeper",
                                                        Defender1,@"defender1",
                                                        Defender2,@"defender2",
                                                        Defender3,@"defender3",
                                                        Defender4,@"defender4",
                                                        Midefielder1,@"midfielder1",
                                                        Midefielder2,@"midfielder2",
                                                        Midefielder3,@"midfielder3",
                                                        Midefielder4,@"midfielder4",
                                                        Forward1,@"forward1",
                                                        Forward2,@"forward2",
                                                        nil]];
    
    return team;
}

+ (DPSClub *)getWeakTeam:(NSString *)teamName {
    
    DPSPlayer *GoalKeeper = [DPSTestData getWeakGoalKeeper:@"aGK" num:@"1"];
    
    DPSPlayer *Defender1 = [DPSTestData getWeakDefender:@"aD1" num:@"2"];
    
    DPSPlayer *Defender2 = [DPSTestData getWeakDefender:@"aD2" num:@"3"];
    
    DPSPlayer *Defender3 = [DPSTestData getWeakDefender:@"aD3" num:@"4"];
    
    DPSPlayer *Defender4 = [DPSTestData getWeakDefender:@"aD4" num:@"5"];
    
    DPSPlayer *Midefielder1 = [DPSTestData getWeakMidfielder:@"aM1" num:@"6"];
    
    DPSPlayer *Midefielder2 = [DPSTestData getWeakMidfielder:@"aM2" num:@"7"];
    
    DPSPlayer *Midefielder3 = [DPSTestData getWeakMidfielder:@"aM3" num:@"8"];
    
    DPSPlayer *Midefielder4 = [DPSTestData getWeakMidfielder:@"aM4" num:@"10"];
    
    DPSPlayer *Forward1 = [DPSTestData getWeakForward:@"aF1" num:@"9"];
    
    DPSPlayer *Forward2 = [DPSTestData getWeakForward:@"aF2" num:@"11"];
    
    DPSClub *team = [[DPSClub alloc]initWithPlayerDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                                      teamName,@"name",
                                                      GoalKeeper,@"goalKeeper",
                                                      Defender1,@"defender1",
                                                      Defender2,@"defender2",
                                                      Defender3,@"defender3",
                                                      Defender4,@"defender4",
                                                      Midefielder1,@"midfielder1",
                                                      Midefielder2,@"midfielder2",
                                                      Midefielder3,@"midfielder3",
                                                      Midefielder4,@"midfielder4",
                                                      Forward1,@"forward1",
                                                      Forward2,@"forward2",
                                                      nil]];
    
    return team;
}

+ (DPSPlayer *)getStrongGoalKeeper:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"0", @"position",
                                          kGoalkeeperCreativity, @"creativity",
                                          @"5", @"aggressive",
                                          @"5", @"shootAbility",
                                          @"40", @"passAbility",
                                          @"0", @"defendAbility",
                                          @"80", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getStrongDefender:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"1", @"position",
                                          kDefenderCreativity, @"creativity",
                                          @"5", @"aggressive",
                                          @"40", @"shootAbility",
                                          @"80", @"passAbility",
                                          @"80", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getStrongMidfielder:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"2", @"position",
                                          kMidfielderCreativity, @"creativity",
                                          @"10", @"aggressive",
                                          @"60", @"shootAbility",
                                          @"80", @"passAbility",
                                          @"60", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getStrongForward:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"3", @"position",
                                          kForwardCreativity, @"creativity",
                                          @"90", @"aggressive",
                                          @"80", @"shootAbility",
                                          @"80", @"passAbility",
                                          @"40", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getMediumGoalKeeper:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"0", @"position",
                                          kGoalkeeperCreativity, @"creativity",
                                          @"5", @"aggressive",
                                          @"5", @"shootAbility",
                                          @"30", @"passAbility",
                                          @"0", @"defendAbility",
                                          @"70", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getMediumDefender:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"1", @"position",
                                          kDefenderCreativity, @"creativity",
                                          @"5", @"aggressive",
                                          @"30", @"shootAbility",
                                          @"60", @"passAbility",
                                          @"60", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getMediumMidfielder:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"2", @"position",
                                          kMidfielderCreativity, @"creativity",
                                          @"10", @"aggressive",
                                          @"50", @"shootAbility",
                                          @"60", @"passAbility",
                                          @"50", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getMediumForward:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"3", @"position",
                                          kForwardCreativity, @"creativity",
                                          @"80", @"aggressive",
                                          @"60", @"shootAbility",
                                          @"60", @"passAbility",
                                          @"40", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getWeakGoalKeeper:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"0", @"position",
                                          kGoalkeeperCreativity, @"creativity",
                                          @"5", @"aggressive",
                                          @"5", @"shootAbility",
                                          @"30", @"passAbility",
                                          @"0", @"defendAbility",
                                          @"60", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getWeakDefender:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"1", @"position",
                                          kDefenderCreativity, @"creativity",
                                          @"5", @"aggressive",
                                          @"20", @"shootAbility",
                                          @"40", @"passAbility",
                                          @"40", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getWeakMidfielder:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"2", @"position",
                                          kMidfielderCreativity, @"creativity",
                                          @"10", @"aggressive",
                                          @"40", @"shootAbility",
                                          @"40", @"passAbility",
                                          @"40", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

+ (DPSPlayer *)getWeakForward:(NSString *)name num:(NSString *)num {
    return [[DPSPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
                                          name, @"name",
                                          num, @"num",
                                          @"3", @"position",
                                          kForwardCreativity, @"creativity",
                                          @"70", @"aggressive",
                                          @"40", @"shootAbility",
                                          @"40", @"passAbility",
                                          @"40", @"defendAbility",
                                          @"0", @"saveAbility",
                                          nil]];
}

@end
