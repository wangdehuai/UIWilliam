//
//  BaseViewController.m
//  JSD
//
//  Created by wangdehuai on 14/12/27.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:COLOR_BG];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:self action:nil];
    [self.navigationItem setBackBarButtonItem:backItem];
}

-(void)setLeftItemWithTitle:(NSString *)title action:(SEL)sel
{
    _LeftItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:self action:sel];
    [self.navigationItem setLeftBarButtonItem:_LeftItem];
}

-(void)setRightItemWithTitle:(NSString *)title action:(SEL)sel
{
    _rightItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:self action:sel];
    [self.navigationItem setRightBarButtonItem:_rightItem];
}

-(void)setLeftItemWithImgStr:(NSString *)imgStr action:(SEL)sel
{
    _LeftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:imgStr] style:UIBarButtonItemStyleDone target:self action:sel];
    [self.navigationItem setLeftBarButtonItem:_LeftItem];
}

-(void)setRightItemWithImgStr:(NSString *)imgStr action:(SEL)sel
{
    _rightItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:imgStr] style:UIBarButtonItemStyleDone target:self action:sel];
    [self.navigationItem setRightBarButtonItem:_rightItem];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
