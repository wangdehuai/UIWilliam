//
//  LogoView.m
//  JSD
//
//  Created by wangdehuai on 15/1/23.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "NavLogoView.h"

@implementation NavLogoView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 0, 40, 40)];
//        [self setBackgroundColor:[UIColor colorWithPatternImage:IMG("nav_logo")]];
    }
    return self;
}

-(UIView *)setImg:(NSString *)imgStr{
    UIImageView *imgV = [[UIImageView alloc] init];
    [imgV setImage:[UIImage imageNamed:imgStr]];
    return imgV;
}

@end
