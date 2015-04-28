#import <UIKit/UIKit.h>
typedef enum
{
    VerticalAlignmentMiddle = 0,
    VerticalAlignmentBottom,
    VerticalAlignmentTop,
} VerticalAlignment;
@interface BaseLabel : UILabel
{
    @private
    VerticalAlignment _verticalAlignment;
}
@property (nonatomic) VerticalAlignment verticalAlignment;



-(void)setLabelText:(NSString *)text x:(float)theX y:(float)theY w:(float)theW h:(float)theH algin:(NSTextAlignment)algin vAlgin:(VerticalAlignment)vAlgin tColor:(UIColor *)tColor tFont:(UIFont *)tFont bgColor:(UIColor *)bgColor view:(UIView *)view;
-(void)setTSLabelText:(NSString *)ts y:(float)theY view:(UIView *)view;
-(void)setLabelText:(NSString *)ts theX:(float)theX theY:(float)theY theW:(float)theW theH:(float)theH bgColor:(UIColor *)bgColor font:(UIFont *)font color:(UIColor *)color view:(UIView *)view;

@end
