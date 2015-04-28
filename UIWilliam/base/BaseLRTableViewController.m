//
//  BaseLRTableViewController.m
//  JSD
//
//  Created by Mac on 15/1/23.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BaseLRTableViewController.h"

@interface BaseLRTableViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation BaseLRTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 10, SCREEN_WIDTH, _rowHeight * _leftArray.count) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.scrollEnabled = NO;
    [self.view addSubview:_tableView];
    
    _tableView.tableFooterView = [[UIView alloc] init];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return _rowHeight;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _leftArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellName"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cellName"];
    }
    cell.backgroundColor = WHITE_COLOR;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [_leftArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [_rightArray objectAtIndex:indexPath.row];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
