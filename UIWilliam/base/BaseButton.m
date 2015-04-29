//
//  BaseButton.m
//  JSD
//
//  Created by wangdehuai on 14/12/29.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseButton.h"

@implementation BaseButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:COLOR_THEME];
//        [self.layer setCornerRadius:4];         //默认圆角
        [self setTitleColor:WHITE_COLOR forState:UIControlStateNormal];
        [self setShowsTouchWhenHighlighted:YES];
    }
    return self;
}

-(void)setBtnTitle:(NSString *)title radius:(CGFloat)radius tColor:(UIColor *)tColor bWidth:(CGFloat)bWidth bColor:(UIColor *)bColor tFont:(UIFont *)tFont bgColor:(UIColor *)bgColor id:(id)id sel:(SEL)sel view:(UIView *)view
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:tColor forState:UIControlStateNormal];
    [self setBackgroundColor:bgColor];
    [self.layer setCornerRadius:radius];
    [self.layer setBorderColor:bColor.CGColor];
    [self.layer setBorderWidth:bWidth];
    [self addTarget:id action:sel forControlEvents:UIControlEventTouchUpInside];
    [self setBackgroundImage:nil forState:UIControlStateNormal];
    [view addSubview:self];
}

-(void)setButtonTitle:(NSString *)title y:(float)theY id:(id)id sel:(SEL)sel view:(UIView *)view
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setFrame:CGRectMake(15, theY, SCREEN_WIDTH-30, 40)];
    [self addTarget:id action:sel forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:self];
}

-(void) setButtonTitle:(NSString *) title y:(float)theY theH:(float)theH  bgColor:(UIColor *)bgColor id:(id)id sel:(SEL)sel  view:(UIView *)view
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setFrame:CGRectMake(0, theY, SCREEN_WIDTH, theH)];
    [self setBackgroundColor:bgColor];
    [self.layer setCornerRadius:0];
    [self addTarget:id action:sel forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:self];
}

-(void) setbuttonTitle:(NSString *) title theX:(float)thex theY:(float)theY theW:(float)theW theH:(float)theH tColor:(UIColor*)titleColor tFont:(UIFont*)font bgColor:(UIColor*)bgColor id:(id)id sel:(SEL)sel view:(UIView *)view
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setFrame:CGRectMake(thex, theY, theW, theH)];
    self.titleLabel.font = font;
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    [self setBackgroundColor:bgColor];
    [self.layer setCornerRadius:0];
    [self addTarget:id action:sel forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:self];
}

-(void) setButtonImage:(UIImage *)imgae title:(NSString *)title TheX:(float)thex TheY:(float)theY theW:(float)theW TheH:(float)theH view:(UIView *)view
{
    [self setFrame:CGRectMake(thex, theY, theW, theH)];
    self.layer.cornerRadius = 0;
    self.backgroundColor = WHITE_COLOR;
    [self setTitle:title forState:UIControlStateNormal];
    [self setImage:imgae forState:UIControlStateNormal];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0 , 0, 0)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(imgae.size.height+ 20, -imgae.size.width, 0, 0)];
    [self setBackgroundImage:nil forState:UIControlStateNormal];
    [self setTitleColor:BLACK_COLOR forState:UIControlStateNormal];
    [view addSubview:self];
}



@end
