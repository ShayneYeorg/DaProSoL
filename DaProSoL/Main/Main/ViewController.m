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
    
    
//    for (int n=0; n<10; n++) {
        DPSClub *ManU = [DPSTestData getStrongTeam:@"ManU"];
        DPSClub *Barca = [DPSTestData getStrongTeam:@"Liv"];
        DPSMatch *m = [[DPSMatch alloc]init];
        DPSMatchResult *matchResult = [m match:ManU against:Barca];
        DPSLog(@"%@", matchResult);
        [matchResult printPlayersTechnicalInfo];
//    }
    
//    NSString *name;
//    for (int i=0; i<100; i++) {
//        name = [[DPSPlayerName share] name];
//        DPLog(@"%@\n", name);
//    }
    
//    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
//    [scrollView setContentSize:CGSizeMake(0, 400*30)];
//    [self.view addSubview:scrollView];
//    
//    for (int i=0; i<30; i++) {
//        DPShirt *shirt = [[DPShirt alloc]initWithFrame:CGRectMake(0, i*400, self.view.frame.size.width, 400)];
//        [scrollView addSubview:shirt];
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
