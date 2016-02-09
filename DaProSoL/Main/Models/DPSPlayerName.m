//
//  DPSPlayerName.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/11/11.
//  Copyright © 2015年 ShayneYeorg. All rights reserved.
//

#import "DPSPlayerName.h"
#import "DPSProbability.h"

@interface DPSPlayerName ()

@property (nonatomic, strong) NSArray *commonKeynotes;
@property (nonatomic, strong) NSArray *commonConsonants;
@property (nonatomic, strong) NSArray *specialConsonants;
//@property (nonatomic, strong) NSMutableArray *nameStyle;

@end

@implementation DPSPlayerName

static id _instance;

- (NSString *)name {
    NSMutableString *returnName = [NSMutableString stringWithString:@""];
    NSString *nameStyleStr = [self nameStyleString];
    for (int i = 0; i < nameStyleStr.length; i++) {
        NSString *wordToken = [nameStyleStr substringWithRange: NSMakeRange(i,1)];
        if ([wordToken isEqualToString:@"Z"]) {
            [returnName appendString:self.commonKeynotes[[DPSProbability probability1to:self.commonKeynotes.count]]];
            
        } else if ([wordToken isEqualToString:@"S"]) {
            [returnName appendString:self.commonConsonants[[DPSProbability probability1to:self.commonConsonants.count]]];
            
        } else if ([wordToken isEqualToString:@"s"]) {
            [returnName appendString:self.specialConsonants[[DPSProbability probability1to:self.specialConsonants.count]]];
        }
    }
    
    [returnName appendString:nameStyleStr];
    
    return returnName;
}

#pragma mark - Singleton

+ (instancetype)share {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

#pragma mark - Private

- (NSString *)nameStyleString {
    NSInteger prob = [DPSProbability probability1To111];
    if (prob <= 6) {
        return @"ZS";
    } else if (prob <= 12) {
        return @"Zs";
    } else if (prob <= 18) {
        return @"ZZS";
    } else if (prob <= 24) {
        return @"ZZs";
    } else if (prob <= 30) {
        return @"ZZSZ";
    } else if (prob <= 36) {
        return @"ZZsZ";
    } else if (prob <= 42) {
        return @"ZSZZ";
    } else if (prob <= 48) {
        return @"ZsZZ";
    } else if (prob <= 54) {
        return @"ZSZS";
    } else if (prob <= 60) {
        return @"ZsZs";
    } else if (prob <= 66) {
        return @"ZSZZS";
    } else if (prob <= 72) {
        return @"ZsZZs";
    } else if (prob <= 78) {
        return @"ZSZZs";
    } else if (prob <= 84) {
        return @"ZsZZS";
    }
    else if (prob <= 88) {
        return @"ZZ";
    } else if (prob <= 92) {
        return @"ZSZ";
    } else if (prob <= 96) {
        return @"ZsZ";
    } else if (prob <= 100) {
        return @"ZZZS";
    } else if (prob <= 104) {
        return @"ZZZs";
    }
    else if (prob == 105) {
        return @"ZZZ";
    } else if (prob == 106) {
        return @"SZZ";
    } else if (prob == 107) {
        return @"SZSZ";
    } else if (prob == 108) {
        return @"SZZS";
    } else if (prob == 109) {
        return @"ZZSZS";
    } else if (prob == 110) {
        return @"ZSZSZS";
    } else {
        return @"ZSZSZs";
    }
}

#pragma mark - Getters

- (NSArray *)commonKeynotes {
    if (!_commonKeynotes) {
        _commonKeynotes = [NSArray arrayWithObjects:@"罗", @"贝", @"邦", @"卡", @"鲁", @"伦", @"迪", @"纳", @"多", @"米", @"尼", @"塔", @"莱", @"菲", @"维", @"南", @"加", @"里", @"埃", @"弗", @"格", @"马", @"科", @"吉", @"洛", @"比", @"德", @"亚", @"威", @"金", @"乔", @"哈", @"伊", @"利", @"雷", @"穆", @"勒", @"法", @"布", @"多", @"本", @"泽", @"厄", @"齐", @"莫", @"劳", @"巴", @"内", @"舒", @"苏", @"西", @"博", @"萨", @"基", @"奇", @"欧", @"麦", @"迈", @"托", @"蒂", @"努", @"扎", @"霍", @"奎", @"皮", @"亨", @"温", @"纽", @"普", @"约", @"阿", @"茨", @"佩", @"拉", @"切", @"彻", @"赫", @"塞", @"兰", @"奥", @"诺", @"贾", @"库", @"耶", @"瓦", @"朗", @"凯", @"福", @"帕", @"拜", @"仁", @"戴", @"甘", @"考", @"道", @"琼", @"希", @"戈", @"杰", @"安", @"代", @"密", @"沃", @"休", @"韦", @"侬", @"列", @"汤", @"查", @"梅", @"索", @"彼", @"泰", @"廉", @"顿", @"林", @"尤", @"蒙", @"涅", @"肖", @"隆", @"坦", @"扬", @"杜", @"达", @"施", @"曼", @"摩", @"特", @"迭", @"古", @"伍", @"锡", @"因", @"英", @"翰", @"卢", @"奈", @"佐", @"宾", @"乌", @"松", @"胡", @"辛", @"什", @"图", @"文", @"盖", @"赞", @"冯", @"鲍", nil];
    }
    return _commonKeynotes;
}

- (NSArray *)commonConsonants {
    if (!_commonConsonants) {
        _commonConsonants = [NSArray arrayWithObjects:@"尔", @"克", @"斯", @"特", nil];
    }
    return _commonConsonants;
}

- (NSArray *)specialConsonants {
    if (!_specialConsonants) {
        _specialConsonants = [NSArray arrayWithObjects:@"德", @"兹", @"恩", @"姆", @"夫", @"奇", @"西", nil];
    }
    return _specialConsonants;
}



@end
