//
//  BaseLine.m
//  JSD
//
//  Created by wangdehuai on 15/3/26.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BaseLine.h"

@implementation BaseLine

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

//横分割线
-(void)setHLineWithX:(float)theX WithY:(float)theY WithW:(float)theW  bgColor:(UIColor *)bgColor view:(UIView *)view
{
    [self setFrame:CGRectMake(theX, theY, theW, 0.4)];
    [self setBackgroundColor:bgColor];
    [view addSubview:self];
}

//竖分割线
-(void)setSLineWithX:(float)theX WithY:(float)theY WithH:(float)theH bgColor:(UIColor *)bgColor view:(UIView *)view
{
    [self setFrame:CGRectMake(theX, theY, 0.4, theH)];
    [self setBackgroundColor:bgColor];
    [view addSubview:self];
}
@end
