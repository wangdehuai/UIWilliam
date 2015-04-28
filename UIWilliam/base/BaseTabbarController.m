//
//  BaseTabbarController.m
//  UIWilliam
//
//  Created by wangdehuai on 15/4/27.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BaseTabbarController.h"

@interface BaseTabbarController ()

@end

@implementation BaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar setTintColor:COLOR_THEME];
    [self.tabBar setTranslucent:NO];
    [self setDelegate:self];
    
    NSMutableArray *navArr = [NSMutableArray array];
    for (int i=0; i<[_titleArr count]; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%@",_titleArr[i]];
        NSString *imageNameSelected = [NSString stringWithFormat:@"%@_selected",imageName];
        BaseNavController *NavVc = [[BaseNavController alloc] initWithRootViewController:_vcArr[i]];
        [_vcArr[i] setTitle:_titleArr[i]];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:_titleArr[i] image:[UIImage imageNamed:imageName] selectedImage:[UIImage imageNamed:imageNameSelected]];
        [item setTag:i];
        [NavVc setTabBarItem:item];
        [navArr addObject:NavVc];
    }
    [self setViewControllers:[NSArray arrayWithArray:navArr]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
