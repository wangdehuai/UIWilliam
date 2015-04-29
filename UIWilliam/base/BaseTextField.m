//
//  BaseTextField.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseTextField.h"

@implementation BaseTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self setAutocapitalizationType:UITextAutocapitalizationTypeNone];
        [self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, 44)];
    }
    return self;
}

#pragma mark - 表单输入框
-(void)setTextFieldT:(NSString *)T Y:(float)Y KType:(UIKeyboardType)KType Pass:(BOOL)Pass V:(UIView *)V
{
    [self setKeyboardType:KType];
    [self setSecureTextEntry:Pass];
    [self setPlaceholder:T];
    [self setFrame:CGRectMake(0, Y, SCREEN_WIDTH, VIEW_H(self))];

    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 44)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
    [V addSubview:self];
}


//-(void)setTextFieleTishi:(NSString *)tishi x:(float)theX y:(float)theY w:(float)theW h:(float)height view:(UIView *)view
//{
//    [self setFrame:CGRectMake(theX, theY, theW, height)];
//    self.layer.borderWidth = 0.5;
//    self.keyboardType = UIKeyboardTypeNumberPad;
//    [self.layer setBorderColor:GRAY_COLOR.CGColor];
//    [self setPlaceholder:tishi];
//    [self setTextAlignment:NSTextAlignmentLeft];
//    [view addSubview:self];
//}
//-(void)setTextFieleConnect:(NSString *)connect y:(float)theY view:(UIView *)view
//{
//    [self setFrame:CGRectMake(0, theY, SCREEN_WIDTH, VIEW_H(self))];
//    [self setText:connect];
//    [self setEnabled:NO];
//    [self setUserInteractionEnabled:NO];
//    [self setTextColor:GRAY_COLOR];
//    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20,VIEW_H(self))];
//    self.leftView = leftView;
//    self.leftViewMode = UITextFieldViewModeAlways;
//    [view addSubview:self];
//}
//
//-(void)settextFeildLeftTitle:(NSString *)title tColor:(UIColor *)tColor rightTitle:(NSString *)rightStr rColor:(UIColor *)rColor y:(float)theY view:(UIView *)view
//{
//    [self setFrame:CGRectMake(0, theY, SCREEN_WIDTH, VIEW_H(self))];
//    [self setText:title];
//    [self setEnabled:NO];
//    [self setUserInteractionEnabled:NO];
//    
//    BaseLabel*rightLabel = [[BaseLabel alloc]init];
//    [rightLabel setLabelText:rightStr x:SCREEN_WIDTH - VIEW_H(self) -20 y:0 w:100  h:0 algin:NSTextAlignmentLeft vAlgin:VerticalAlignmentBottom  tColor:rColor tFont:FONT(14) bgColor:CLEAR_COLOR view:self];
//    [view addSubview:self];
//}

//-(void)settextFeildLeftSel:(SEL)leftSel leftId:(id)leftId rightSel:(SEL)rightSel rightId:(id)rightId tishi:(NSString *)tishi y:(float)theY view:(UIView *)view
//{
//    [self setFrame:CGRectMake(15, theY, SCREEN_WIDTH-30, VIEW_H(self))];
//    self.layer.borderWidth = 0.5;
//    self.keyboardType = UIKeyboardTypeNumberPad;
//    [self.layer setBorderColor:GRAY_COLOR.CGColor];
//    [self setPlaceholder:tishi];
//    [self setTextAlignment:NSTextAlignmentCenter];
//    BaseButton *leftBtn = [[BaseButton  alloc]initWithFrame:CGRectMake(0, 0, VIEW_H(self), VIEW_H(self))];
//    [leftBtn setBtnTitle:@"-" radius:0 tColor:WHITE_COLOR bWidth:0 bColor:CLEAR_COLOR tFont:FONT(18) bgColor:COLOR_THEME id:leftId sel:leftSel view:nil];
//    BaseButton *rightBtn = [[BaseButton alloc]initWithFrame:CGRectMake(0, 0, VIEW_H(self), VIEW_H(self))];
//    [rightBtn setBtnTitle:@"+" radius:0 tColor:WHITE_COLOR bWidth:0 bColor:CLEAR_COLOR tFont:FONT(16) bgColor:COLOR_THEME id:rightId sel:rightSel view:nil];
//    [self setLeftView:leftBtn];
//    [self setRightView:rightBtn];
//    [self setLeftViewMode:UITextFieldViewModeAlways];
//    [self setRightViewMode:UITextFieldViewModeAlways];
//    [view addSubview:self];
//}

@end
