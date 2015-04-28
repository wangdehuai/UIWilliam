//
//  SliderView.m
//  JSD
//
//  Created by wangdehuai on 14/12/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseSliderView.h"
#import "UIImageView+WebCache.h"

@implementation BaseSliderView
{
    NSArray *urls;
    BaseViewController *vc;
}
- (instancetype)initWithFrame:(CGRect)frame Btns:(NSArray *)Btns Urls:(NSArray *)Urls Target:(id)Target
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:COLOR_BG];
        [self setUserInteractionEnabled:YES];
        [self setShowsHorizontalScrollIndicator:NO];
        [self setShowsVerticalScrollIndicator:NO];
        [self setBounces:NO]; 
        [self setScrollsToTop:NO];
        [self setPagingEnabled:YES];//是否分页
        [self setFrame:CGRectMake(0, 0, VIEW_W(self), VIEW_H(self))];
        [self setContentSize:CGSizeMake(VIEW_W(self)*Btns.count, VIEW_H(self))];
        
        for (int i=0; i< Btns.count; i++)
        {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(i*VIEW_W(self), 0, VIEW_W(self), VIEW_H(self))];
            [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
            [btn setTag:i];
            UIImageView *imv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, VIEW_W(btn), VIEW_H(btn))];
            [imv sd_setImageWithURL:Btns[i]];
            [imv setContentMode:UIViewContentModeScaleAspectFill];
            [btn addSubview:imv];
            [self addSubview:btn];
        }
        
        urls = Urls;
        vc = (BaseViewController *)Target;
    }
    return self;
}

-(void)btnClick:(id)sender{
    UIButton *btn = (UIButton *)sender;
    BaseWebViewController *webV = [[BaseWebViewController alloc] init];
    [webV setUrlStr:[NSString stringWithFormat:@"%@",urls[btn.tag]]];
    [vc.navigationController pushViewController:webV animated:YES];
}

@end
