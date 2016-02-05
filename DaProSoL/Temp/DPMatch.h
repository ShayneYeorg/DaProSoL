//
//  DPMatch.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/9/2.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPMatchResult.h"
#import "DPClub.h"

@interface DPMatch : NSObject

- (DPMatchResult *)match:(DPClub *)homeTeam against:(DPClub *)awayTeam;

@end
