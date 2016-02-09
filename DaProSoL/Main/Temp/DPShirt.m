//
//  DPShirt.m
//  DaProSoL
//
//  Created by 杨淳引 on 15/12/27.
//  Copyright © 2015年 ShayneYeorg. All rights reserved.
//

#import "DPShirt.h"
#import "DPSProbability.h"

@implementation DPShirt {
    CGFloat _color1R;
    CGFloat _color1G;
    CGFloat _color1B;
    
    CGFloat _color2R;
    CGFloat _color2G;
    CGFloat _color2B;
    
    CGFloat _color3R;
    CGFloat _color3G;
    CGFloat _color3B;
    
    UIColor *_shirtColor;
    UIColor *_pantColor;
    UIColor *_sockColor;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
//        self.backgroundColor = [UIColor grayColor];
        
        
//        _color1R = [DPSProbability probability0to:255];
//        _color1G = [DPSProbability probability0to:255];
//        _color1B = [DPSProbability probability0to:255];
//        
//        _color2R = [DPSProbability probability0to:255];
//        _color2G = [DPSProbability probability0to:255];
//        _color2B = [DPSProbability probability0to:255];
//        
//        _color3R = [DPSProbability probability0to:255];
//        _color3G = [DPSProbability probability0to:255];
//        _color3B = [DPSProbability probability0to:255];
        
//        _color1R = 32;
//        _color1G = 171;
//        _color1B = 241;
//        
//        _color2R = 11;
//        _color2G = 6;
//        _color2B = 55;
//        
//        _color3R = 0;
//        _color3G = 0;
//        _color3B = 0;
        
        UIColor *color1 = RGB(_color1R, _color1G, _color1B);
        UIColor *color2 = RGB(_color2R, _color2G, _color2B);
        UIColor *color3 = RGB(_color3R, _color3G, _color3B);
        
        _shirtColor = color1;
        _pantColor = color2;
        _sockColor = color3;
        
        [self configLowerPart];
        [self configUpperPart];
        [self configSock];
    }
    return self;
}

- (void)configLowerPart { //下半身
    UIView *leftPant = [[UIView alloc]initWithFrame:CGRectMake(136, 200, 45, 60)];
    leftPant.backgroundColor = _pantColor;
    CGFloat angle = M_PI_4 * 0.2;
    leftPant.transform=CGAffineTransformRotate(leftPant.transform, angle);
    [self addSubview:leftPant];
    
    UIView *rightPant = [[UIView alloc]initWithFrame:CGRectMake(178, 200, 45, 60)];
    rightPant.backgroundColor = _pantColor;
    CGFloat angle2 = -M_PI_4 * 0.2;
    rightPant.transform=CGAffineTransformRotate(rightPant.transform, angle2);
    [self addSubview:rightPant];
    
    UILabel *pantColor = [[UILabel alloc]initWithFrame:CGRectMake(300, 200, 150, 70)];
    pantColor.text = [NSString stringWithFormat:@"R:%ld\nG:%ld\nB:%ld", (long)_color2R, (long)_color2G, (long)_color2B];
    pantColor.numberOfLines = 0;
    [self addSubview:pantColor];
}

- (void)configUpperPart { //上半身
    UIView *leftSleeve = [[UIView alloc]initWithFrame:CGRectMake(118, 103, 30, 50)];
    leftSleeve.backgroundColor = _shirtColor;
    CGFloat angle=M_PI_4;
    leftSleeve.transform=CGAffineTransformRotate(leftSleeve.transform, angle);
    [self addSubview:leftSleeve];
    
    UIView *rightSleeve = [[UIView alloc]initWithFrame:CGRectMake(212, 103, 30, 50)];
    rightSleeve.backgroundColor = _shirtColor;
    CGFloat angle2 = -M_PI_4;
    rightSleeve.transform=CGAffineTransformRotate(rightSleeve.transform, angle2);
    [self addSubview:rightSleeve];
    
    [self configColumnBarBody];
}

- (void)configPureBody {
    UIView *body = [[UIView alloc]initWithFrame:CGRectMake(140, 100, 80, 105)];
    body.backgroundColor = _shirtColor;
    [self addSubview:body];
    
    UILabel *bodyColor = [[UILabel alloc]initWithFrame:CGRectMake(300, 100, 150, 70)];
    bodyColor.text = [NSString stringWithFormat:@"R:%ld\nG:%ld\nB:%ld", (long)_color1R, (long)_color1G, (long)_color1B];
    bodyColor.numberOfLines = 0;
    [self addSubview:bodyColor];
}

- (void)configColumnBarBody {
    NSInteger color4R = [DPSProbability probability1to:255];
    NSInteger color4G = [DPSProbability probability1to:255];
    NSInteger color4B = [DPSProbability probability1to:255];
    
    //一条16宽
    UIView *body1 = [[UIView alloc]initWithFrame:CGRectMake(140, 100, 16, 105)];
    body1.backgroundColor = RGB(color4R, color4G, color4B);
    [self addSubview:body1];
    
    UIView *body2 = [[UIView alloc]initWithFrame:CGRectMake(156, 100, 16, 105)];
    body2.backgroundColor = _shirtColor;
    [self addSubview:body2];
    
    UIView *body3 = [[UIView alloc]initWithFrame:CGRectMake(172, 100, 16, 105)];
    body3.backgroundColor = RGB(color4R, color4G, color4B);
    [self addSubview:body3];
    
    UIView *body4 = [[UIView alloc]initWithFrame:CGRectMake(188, 100, 16, 105)];
    body4.backgroundColor = _shirtColor;
    [self addSubview:body4];
    
    UIView *body5 = [[UIView alloc]initWithFrame:CGRectMake(204, 100, 16, 105)];
    body5.backgroundColor = RGB(color4R, color4G, color4B);
    [self addSubview:body5];
    
    UILabel *bodyColor1 = [[UILabel alloc]initWithFrame:CGRectMake(300, 70, 150, 70)];
    bodyColor1.text = [NSString stringWithFormat:@"R:%ld\nG:%ld\nB:%ld", (long)_color1R, (long)_color1G, (long)_color1B];
    bodyColor1.numberOfLines = 0;
    [self addSubview:bodyColor1];
    
    UILabel *bodyColor2 = [[UILabel alloc]initWithFrame:CGRectMake(300, 130, 150, 70)];
    bodyColor2.text = [NSString stringWithFormat:@"R:%ld\nG:%ld\nB:%ld", (long)color4R, (long)color4G, (long)color4B];
    bodyColor2.numberOfLines = 0;
    [self addSubview:bodyColor2];
}

- (void)configSock {
    UIView *leftSock1 = [[UIView alloc]initWithFrame:CGRectMake(145, 285, 25, 80)];
    leftSock1.backgroundColor = _sockColor;
    [self addSubview:leftSock1];
    
    UIView *leftSock2 = [[UIView alloc]initWithFrame:CGRectMake(135, 350, 35, 15)];
    leftSock2.backgroundColor = _sockColor;
    [self addSubview:leftSock2];
    
    UIView *leftSock3 = [[UIView alloc]init];
    leftSock3.frame = CGRectMake(128.5, 350, 15, 15);
    leftSock3.layer.cornerRadius = 7.5;
    leftSock3.layer.masksToBounds = YES;
    leftSock3.backgroundColor = _sockColor;
    [self addSubview:leftSock3];
    
    UIView *rightSock1 = [[UIView alloc]initWithFrame:CGRectMake(190, 285, 25, 80)];
    rightSock1.backgroundColor = _sockColor;
    [self addSubview:rightSock1];
    
    UIView *rightSock2 = [[UIView alloc]initWithFrame:CGRectMake(190, 350, 35, 15)];
    rightSock2.backgroundColor = _sockColor;
    [self addSubview:rightSock2];
    
    UIView *rightSock3 = [[UIView alloc]init];
    rightSock3.frame = CGRectMake(217, 350, 15, 15);
    rightSock3.layer.cornerRadius = 7.5;
    rightSock3.layer.masksToBounds = YES;
    rightSock3.backgroundColor = _sockColor;
    [self addSubview:rightSock3];
    
    UILabel *sockColor = [[UILabel alloc]initWithFrame:CGRectMake(300, 285, 150, 70)];
    sockColor.text = [NSString stringWithFormat:@"R:%ld\nG:%ld\nB:%ld", (long)_color3R, (long)_color3G, (long)_color3B];
    sockColor.numberOfLines = 0;
    [self addSubview:sockColor];
    
}

@end










