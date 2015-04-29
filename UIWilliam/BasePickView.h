//
//  BasePickView.h
//  UIWilliam
//
//  Created by wangdehuai on 15/4/29.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasePickView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,retain) NSMutableArray *listArr;

-(NSString *)checkClick;

@end
