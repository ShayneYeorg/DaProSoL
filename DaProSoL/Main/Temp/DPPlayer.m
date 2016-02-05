//
//  DPPlayer.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/8/21.
//  Copyright (c) 2015年 ShayneYeorg. All rights reserved.
//

#import "DPPlayer.h"
#import "DPSProbability.h"

@interface DPPlayer ()


@end

@implementation DPPlayer

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
        self.created       = 0;
        self.touches       = 0;
        self.shoots        = 0;
        self.goals         = 0;
        self.passes        = 0;
        self.passeSuccess  = 0;
        self.asists        = 0;
        self.tackles       = 0;
        self.tackleSuccess = 0;
        self.saves         = 0;
        self.saveSuccess   = 0;
    }
    return self;
}

- (BOOL)shoot {
    if (self.shootAbility >= [DPSProbability probability]) {
        return YES;
    }
    return NO;
}

- (BOOL)pass {
    if (self.passAbility >= [DPSProbability probability]) {
        return YES;
    }
    return NO;
}

- (BOOL)defend {
    if (self.defendAbility >= [DPSProbability probability]) {
        return YES;
    }
    return NO;
}

- (BOOL)save {
    if (self.saveAbility >= [DPSProbability probability]) {
        return YES;
    }
    return NO;
}

@end
