//
//  DPSTestData.h
//  DaProSoL
//
//  Created by 杨淳引 on 16/1/26.
//  Copyright © 2016年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPClub.h"

@interface DPSTestData : NSObject

+ (DPClub *)getStrongTeam:(NSString *)teamName;
+ (DPClub *)getMediumTeam:(NSString *)teamName;
+ (DPClub *)getWeakTeam:(NSString *)teamName;

@end
