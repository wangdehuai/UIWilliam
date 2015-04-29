//
//  BasePickView.m
//  UIWilliam
//
//  Created by wangdehuai on 15/4/29.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BasePickView.h"

@implementation BasePickView

{
    NSString *returnStr;
    UIButton *cancelBtn;
    UIButton *checkBtn;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setFrame:CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, 250)];
        [self setBackgroundColor:WHITE_COLOR];
        UIView *viewBG = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 34)];
        [viewBG setBackgroundColor:LIGHT_GRAYS_COLOR];
        [self addSubview:viewBG];
        cancelBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, VIEW_H(viewBG))];
        checkBtn = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-50, 0, 50, VIEW_H(viewBG))];
        [cancelBtn setBackgroundColor:COLOR_BG];
        [checkBtn setBackgroundColor:COLOR_THEME];
        [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
        [checkBtn setTitle:@"确定" forState:UIControlStateNormal];
        [cancelBtn addTarget:self action:@selector(cancelClick) forControlEvents:UIControlEventTouchUpInside];
        [checkBtn addTarget:self action:@selector(checkClick) forControlEvents:UIControlEventTouchUpInside];
        [viewBG addSubview:cancelBtn];
        [viewBG addSubview:checkBtn];
        [self createPickView];
    }
    return self;
}

-(void)createPickView
{
    UIPickerView *pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 34, SCREEN_WIDTH, 216)];
    [pickerView setShowsSelectionIndicator:YES];
    pickerView.delegate = self;
    pickerView.dataSource = self;
    [self addSubview:pickerView];
}


-(void)cancelClick
{
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, 250);
    }];
}
-(NSString *)checkClick
{
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, 250);
    }];
    return returnStr;
}

#pragma mark -返回几列
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
#pragma mark -返回几行
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _listArr.count;;
}
#pragma mark -返回内容
-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [_listArr objectAtIndex:row];
}

#pragma mark -改字体
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, SCREEN_WIDTH, 30)] ;
    
    myLabel.textAlignment = NSTextAlignmentCenter;
    
    myLabel.text = [_listArr objectAtIndex:row];
    
    myLabel.font = FONT(12);  //用label来设置字体大小
    myLabel.backgroundColor = [UIColor clearColor];
    return myLabel;
}
#pragma mark -选择row
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    returnStr = [_listArr objectAtIndex:row];
}

@end
