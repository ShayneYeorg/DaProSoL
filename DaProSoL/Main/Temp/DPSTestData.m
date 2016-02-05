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
    
    DPPlayer *GoalKeeper = [DPSTestData getStrongGoalKeeper:@"GK" num:@"1"];
    
    DPPlayer *Defender1 = [DPSTestData getStrongDefender:@"D1" num:@"2"];
    
    DPPlayer *Defender2 = [DPSTestData getStrongDefender:@"D2" num:@"3"];
    
    DPPlayer *Defender3 = [DPSTestData getStrongDefender:@"D3" num:@"4"];
    
    DPPlayer *Defender4 = [DPSTestData getStrongDefender:@"D4" num:@"5"];
    
    DPPlayer *Midefielder1 = [DPSTestData getStrongMidfielder:@"M1" num:@"6"];
    
    DPPlayer *Midefielder2 = [DPSTestData getStrongMidfielder:@"M2" num:@"7"];
    
    DPPlayer *Midefielder3 = [DPSTestData getStrongMidfielder:@"M3" num:@"8"];
    
    DPPlayer *Midefielder4 = [DPSTestData getStrongMidfielder:@"M4" num:@"10"];
    
    DPPlayer *Forward1 = [DPSTestData getStrongForward:@"F1" num:@"9"];
    
    DPPlayer *Forward2 = [DPSTestData getStrongForward:@"F2" num:@"11"];
    
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
    
    DPPlayer *GoalKeeper = [DPSTestData getMediumGoalKeeper:@"GK" num:@"1"];
    
    DPPlayer *Defender1 = [DPSTestData getMediumDefender:@"D1" num:@"2"];
    
    DPPlayer *Defender2 = [DPSTestData getMediumDefender:@"D2" num:@"3"];
    
    DPPlayer *Defender3 = [DPSTestData getMediumDefender:@"D3" num:@"4"];
    
    DPPlayer *Defender4 = [DPSTestData getMediumDefender:@"D4" num:@"5"];
    
    DPPlayer *Midefielder1 = [DPSTestData getMediumMidfielder:@"M1" num:@"6"];
    
    DPPlayer *Midefielder2 = [DPSTestData getMediumMidfielder:@"M2" num:@"7"];
    
    DPPlayer *Midefielder3 = [DPSTestData getMediumMidfielder:@"M3" num:@"8"];
    
    DPPlayer *Midefielder4 = [DPSTestData getMediumMidfielder:@"M4" num:@"10"];
    
    DPPlayer *Forward1 = [DPSTestData getMediumForward:@"F1" num:@"9"];
    
    DPPlayer *Forward2 = [DPSTestData getMediumForward:@"F2" num:@"11"];
    
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
    
    DPPlayer *GoalKeeper = [DPSTestData getWeakGoalKeeper:@"GK" num:@"1"];
    
    DPPlayer *Defender1 = [DPSTestData getWeakDefender:@"D1" num:@"2"];
    
    DPPlayer *Defender2 = [DPSTestData getWeakDefender:@"D2" num:@"3"];
    
    DPPlayer *Defender3 = [DPSTestData getWeakDefender:@"D3" num:@"4"];
    
    DPPlayer *Defender4 = [DPSTestData getWeakDefender:@"D4" num:@"5"];
    
    DPPlayer *Midefielder1 = [DPSTestData getWeakMidfielder:@"M1" num:@"6"];
    
    DPPlayer *Midefielder2 = [DPSTestData getWeakMidfielder:@"M2" num:@"7"];
    
    DPPlayer *Midefielder3 = [DPSTestData getWeakMidfielder:@"M3" num:@"8"];
    
    DPPlayer *Midefielder4 = [DPSTestData getWeakMidfielder:@"M4" num:@"10"];
    
    DPPlayer *Forward1 = [DPSTestData getWeakForward:@"F1" num:@"9"];
    
    DPPlayer *Forward2 = [DPSTestData getWeakForward:@"F2" num:@"11"];
    
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

+ (DPPlayer *)getStrongGoalKeeper:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getStrongDefender:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getStrongMidfielder:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getStrongForward:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getMediumGoalKeeper:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getMediumDefender:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getMediumMidfielder:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getMediumForward:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getWeakGoalKeeper:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getWeakDefender:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getWeakMidfielder:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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

+ (DPPlayer *)getWeakForward:(NSString *)name num:(NSString *)num {
    return [[DPPlayer alloc]initWithDict:[NSDictionary dictionaryWithObjectsAndKeys:
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
