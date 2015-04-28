//
//  BaseScrollView.m
//  JSD
//
//  Created by wangdehuai on 14/12/30.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseScrollView.h"

@implementation BaseScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

-(void)setBGcolor:(UIColor *)bgColor contentW:(float)contentW contentH:(float)contentH havesH:(BOOL)havesH havesV:(BOOL)havesV isPage:(BOOL)isPage isEnable:(BOOL)isEnable view:(UIView *)view
{
    [self setBackgroundColor:bgColor];
    [self setContentSize:CGSizeMake(contentW, contentH)];
    [self setDirectionalLockEnabled:isEnable];
    [self setPagingEnabled:isPage];
    [self setShowsHorizontalScrollIndicator:havesH];
    [self setShowsVerticalScrollIndicator:havesV];
    [view addSubview:self];
}

@end
