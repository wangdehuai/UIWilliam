//
//  BaseLabel.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseLabel.h"

@implementation BaseLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        self.verticalAlignment = VerticalAlignmentMiddle;
    }
    return self;
}
- (void)setVerticalAlignment:(VerticalAlignment)verticalAlignment {
    verticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalAlignment) {
        case VerticalAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case VerticalAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case VerticalAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}


#pragma mark -自适应高度
-(void)setLabelText:(NSString *)text x:(float)theX y:(float)theY w:(float)theW h:(float)theH algin:(NSTextAlignment)algin vAlgin:(VerticalAlignment)vAlgin tColor:(UIColor *)tColor tFont:(UIFont *)tFont bgColor:(UIColor *)bgColor view:(UIView *)view
{
    [self setTextAlignment:algin];
    [self setVerticalAlignment:vAlgin];
    [self setText:text];
    [self setBackgroundColor:bgColor];
    [self setFrame:CGRectMake(0, 0, theW, theH)];
    [self setNumberOfLines:0];
    [self setTextColor:tColor];
    [self setLineBreakMode:NSLineBreakByTruncatingTail];
    [self setFont:tFont];
    CGSize size;
    
    if(theH == 0 && theW == 0){
        size = CGSizeMake(MAXFLOAT,MAXFLOAT);
    }else if(theH == 0 && theW != 0){
        size = CGSizeMake(theW,MAXFLOAT);
    }else if (theW == 0 && theH != 0) {
            size = CGSizeMake(MAXFLOAT,theH);
    }else{
        size = CGSizeMake(theW, theH);
    }
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:tFont,NSFontAttributeName,nil];
    CGSize  labelsize =[text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    [self setFrame:CGRectMake(theX, theY, labelsize.width, labelsize.height)];
    [view addSubview:self];
}

#pragma mark -提示样式
-(void)setTSLabelText:(NSString *)ts y:(float)theY view:(UIView *)view
{
    [self setText:ts];
    [self setFrame:CGRectMake(0, 0, 0, 0)];
    [self setNumberOfLines:0];
    
    [self setTextColor:DARK_GRAY_COLOR];
    [self setLineBreakMode:NSLineBreakByTruncatingTail];
    [self setFont:FONT(12)];
    CGSize size = CGSizeMake(SCREEN_WIDTH-30,MAXFLOAT);
    
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:FONT(12),NSFontAttributeName,nil];
    CGSize  labelsize =[ts boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    
    [self setFrame:CGRectMake(15, theY, labelsize.width, labelsize.height)];
    [view addSubview:self];
}


-(void)setLabelText:(NSString *)ts theX:(float)theX theY:(float)theY theW:(float)theW theH:(float)theH bgColor:(UIColor *)bgColor font:(UIFont *)font color:(UIColor *)color view:(UIView *)view
{
    
    [self setFrame:CGRectMake(theX, theY, theW, theH)];
    [self setBackgroundColor:bgColor];
    [self setText:ts];
    self.verticalAlignment = VerticalAlignmentMiddle;

    [self setNumberOfLines:0];
    [self setTextColor:color];
    [self setFont:font];
    [view addSubview:self];
}

@end
