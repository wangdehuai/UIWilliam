//
//  BaseAlertView.m
//  JSD
//
//  Created by Mac on 15/4/1.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BaseAlertView.h"

@implementation BaseAlertView

-(id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate
{
    self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:nil otherButtonTitles:nil, nil];
    if ( self) {
        [NSTimer scheduledTimerWithTimeInterval:2.5f
                                         target:self
                                       selector:@selector(timerFireMethod:)
                                       userInfo:self
                                        repeats:YES];
    }
    return self;
}


- (void)timerFireMethod:(NSTimer*)theTimer//弹出框
{
    UIAlertView *promptAlert = (UIAlertView*)[theTimer userInfo];
    [promptAlert dismissWithClickedButtonIndex:0 animated:NO];
    promptAlert =NULL;
}

@end
