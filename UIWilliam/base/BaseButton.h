@interface BaseButton : UIButton

-(void)setBtnTitle:(NSString *)title radius:(CGFloat)radius tColor:(UIColor *)tColor bWidth:(CGFloat)bWidth bColor:(UIColor *)bColor tFont:(UIFont *)tFont bgColor:(UIColor *)bgColor id:(id)id sel:(SEL)sel view:(UIView *)view;
-(void)setButtonTitle:(NSString *)title y:(float)theY id:(id)id sel:(SEL)sel view:(UIView *)view;
-(void) setButtonTitle:(NSString *) title y:(float)theY theH:(float)theH  bgColor:(UIColor *)bgColor id:(id)id sel:(SEL)sel  view:(UIView *)view;
-(void) setbuttonTitle:(NSString *) title theX:(float)thex theY:(float)theY theW:(float)theW theH:(float)theH tColor:(UIColor*)titleColor tFont:(UIFont*)font bgColor:(UIColor*)bgColor id:(id)id sel:(SEL)sel view:(UIView *)view;
-(void) setButtonImage:(UIImage *)imgae title:(NSString *)title TheX:(float)thex TheY:(float)theY theW:(float)theW TheH:(float)theH view:(UIView *)view;

@end
