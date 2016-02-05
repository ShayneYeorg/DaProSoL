//
//  DPSTestData.h
//  DaProSoL
//
//  Created by 杨淳引 on 16/1/26.
//  Copyright © 2016年 ShayneYeorg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPSClub.h"

@interface DPSTestData : NSObject

+ (DPSClub *)getStrongTeam:(NSString *)teamName;
+ (DPSClub *)getMediumTeam:(NSString *)teamName;
+ (DPSClub *)getWeakTeam:(NSString *)teamName;

@end
