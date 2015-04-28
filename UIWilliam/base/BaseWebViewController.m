//
//  NewViewController.m
//  JSD
//
//  活动页面
//
//  Created by wangdehuai on 14/12/27.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseWebViewController.h"

@interface BaseWebViewController ()
@end

@implementation BaseWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _webV = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-64)];
    _webV.backgroundColor = COLOR_BG;
    [_webV loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_urlStr]]];
    self.view = _webV;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
