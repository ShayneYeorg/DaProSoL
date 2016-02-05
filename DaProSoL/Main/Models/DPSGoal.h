//
//  DPScore.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/9/2.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPSGoal : NSObject

@property (nonatomic, assign) BOOL isHomeTeam;
@property (nonatomic, assign) NSString *scorePlayerNum;
@property (nonatomic, copy) NSString *scorePlayer;
@property (nonatomic, assign) NSString *asisPlayerNum;
@property (nonatomic, copy) NSString *asisPlayer;
@property (nonatomic, assign) NSString *time;

@end
