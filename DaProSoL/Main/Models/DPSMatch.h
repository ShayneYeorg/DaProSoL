//
//  DPSMatch.h
//  DaProSoL
//
//  Created by 杨淳引 on 15/9/2.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPSMatchResult.h"
#import "DPSClub.h"

@interface DPSMatch : NSObject

- (DPSMatchResult *)match:(DPSClub *)homeTeam against:(DPSClub *)awayTeam;

@end
