//
//  ViewController.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "ViewController.h"
#import "DPSProbability.h"
#import "DPSMatch.h"
#import "DPSPlayerName.h"
#import "DPShirt.h"
#import "DPSTestData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
//    NSInteger homeScore = 0;
//    NSInteger awayScore = 0;
//    for (int i=0; i<10000; i++) {
//        DPSClub *ManU = [DPSTestData getStrongTeam:@"ManU"];
//        DPSClub *Barca = [DPSTestData getStrongTeam2:@"Liv"];
//        DPSMatch *m = [[DPSMatch alloc]init];
//        DPSMatchResult *matchResult = [m match:ManU against:Barca];
//        homeScore += matchResult.homeScore;
//        awayScore += matchResult.awayScore;
//    }
//    DPSLog(@"home %f : %f away", homeScore/10000.00, awayScore/10000.00);
    
    DPSClub *ManU = [DPSTestData getStrongTeam:@"ManU"];
    DPSClub *Barca = [DPSTestData getStrongTeam2:@"Liv"];
    DPSMatch *m = [[DPSMatch alloc]init];
    DPSMatchResult *matchResult = [m match:ManU against:Barca];
    DPSLog(@"%@", matchResult);
    [matchResult printPlayersTechnicalInfo];
    
}

@end

