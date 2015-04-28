//
//  BasePageControl.m
//  JSD
//
//  Created by wangdehuai on 15/1/26.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BasePageControl.h"

@implementation BasePageControl

- (id)initWithView:(UIView*)view vc:(UIViewController *)vc
{
    self = [super initWithFrame:CGRectMake(0, VIEW_H(view)-30, SCREEN_WIDTH, 30)];
    if (self) {
        //分页控制器
        [self setCurrentPageIndicatorTintColor:COLOR_THEME];
        [self setPageIndicatorTintColor:WHITE_COLOR];
        [self setCurrentPage:0];
        [self setTag:100];
        [self setNumberOfPages:PICNUM];
        [vc.view addSubview:self];
    }
    return self;
}

@end
