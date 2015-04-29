//
//  YZMtextfield.m
//  UIWilliam
//
//  Created by wangdehuai on 15/4/29.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "YZMtextfield.h"

@implementation YZMtextfield
{
    int secondsCountDown;//倒计时数
    NSTimer *countDownTimer;//倒计时
    UIButton *rightBtn;
}
#pragma mark - 验证码输入框
-(void)setTextField:(float)Y V:(UIView *)V
{
    [self setKeyboardType:UIKeyboardTypeNumberPad];
    self.placeholder = @"请输入验证码";
    [self setFrame:CGRectMake(0, Y, SCREEN_WIDTH , VIEW_H(self))];
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 44)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
    
    rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 44)];
    [rightBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(yzmClick) forControlEvents:UIControlEventTouchUpInside];
    self.rightView = rightBtn;
    self.rightViewMode = UITextFieldViewModeAlways;
    [V addSubview:self];
}

-(void)yzmClick{
    secondsCountDown = 60;
    countDownTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:YES];
    [rightBtn setUserInteractionEnabled:NO];
    [rightBtn setTitle:[NSString stringWithFormat:@"%d秒后重新获取",secondsCountDown] forState:UIControlStateNormal];
}

-(void)timerFireMethod:(NSTimer *)theTimer
{
    secondsCountDown--;
    [rightBtn setTitle:[NSString stringWithFormat:@"%d",secondsCountDown] forState:UIControlStateNormal];
    if (secondsCountDown == 0 ) {
        [countDownTimer invalidate];
        [rightBtn setUserInteractionEnabled:YES];
    }
}


@end
