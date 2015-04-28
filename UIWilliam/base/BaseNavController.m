//
//  BaseNavViewController.m
//  JSD
//
//  Created by wangdehuai on 14/12/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseNavController.h"

@interface BaseNavController ()

@end

@implementation BaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    //statusBar 字色
    //[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //左右 item 颜色
    [self.navigationBar setTintColor:WHITE_COLOR];
    
    //黑底白字，nav不透明
    [self.navigationBar setBarStyle:UIBarStyleBlackOpaque];
    //bar 不透明
    [self.navigationBar setTranslucent:NO];
    [self.navigationBar setBarTintColor:COLOR_THEME];
    
    //去线
//    [self.navigationBar setBackgroundImage:IMG("navBarBg") forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setShadowImage:[UIImage imageNamed:@"navBarBg"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
