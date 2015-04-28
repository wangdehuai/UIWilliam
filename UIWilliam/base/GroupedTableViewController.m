//
//  BaseTableViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/9.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "GroupedTableViewController.h"

@interface GroupedTableViewController ()
{
    UIActivityViewController *actionV;//弹弹
}
@end

@implementation GroupedTableViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tabBarController.tabBar setHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.tabBarController.tabBar setHidden:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBarController.tabBar setHidden:YES];
    [self.view setBackgroundColor:COLOR_BG];
    self.tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen]bounds] style:UITableViewStyleGrouped];
    
    [self setClearsSelectionOnViewWillAppear:YES];
    
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

#pragma mark -- section 间距

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 1)];
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 1)];
}

#pragma mark -- section 间距

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//共几个 section
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [_array count];
}


//共有几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_array[section] count];
}


@end
