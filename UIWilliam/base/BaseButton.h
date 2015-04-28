#import <UIKit/UIKit.h>

@interface BaseButton : UIButton

/**
 *  可设置圆角的btn
 *
 *  @param title   title
 *  @param radius  圆角
 *  @param tColor  titleColor
 *  @param bWidth  外边框
 *  @param bColor  外边框颜色
 *  @param tFont   titleFont
 *  @param bgColor 背景颜色
 *  @param id      id
 *  @param sel     方法
 *  @param view    添加到的view
 */
-(void)setBtnTitle:(NSString *)title radius:(CGFloat)radius tColor:(UIColor *)tColor bWidth:(CGFloat)bWidth bColor:(UIColor *)bColor tFont:(UIFont *)tFont bgColor:(UIColor *)bgColor id:(id)id sel:(SEL)sel view:(UIView *)view;

/**
 *  左右距离15p的btn，背景颜色自定义
 *
 *  @param title title
 *  @param theY  y
 *  @param id    id
 *  @param sel   方法
 *  @param view  添加到的view
 */
-(void)setButtonTitle:(NSString *)title y:(float)theY id:(id)id sel:(SEL)sel view:(UIView *)view;


/**
 *  满横屏button
 *
 *  @param title   title
 *  @param theY    y
 *  @param theH    height
 *  @param bgColor 背景颜色
 *  @param id      id
 *  @param sel     方法
 *  @param view    添加到哪个view
 */
-(void) setButtonTitle:(NSString *) title y:(float)theY theH:(float)theH  bgColor:(UIColor *)bgColor id:(id)id sel:(SEL)sel  view:(UIView *)view;

/**
 *  普通button
 *
 *  @param title      title
 *  @param thex       x
 *  @param theY       y
 *  @param theW       width
 *  @param theH       height
 *  @param titleColor titleColor
 *  @param font       titleFont
 *  @param bgColor    背景颜色
 *  @param id         id
 *  @param sel        fangf
 *  @param view       添加的view
 */
-(void) setbuttonTitle:(NSString *) title theX:(float)thex theY:(float)theY theW:(float)theW theH:(float)theH tColor:(UIColor*)titleColor tFont:(UIFont*)font bgColor:(UIColor*)bgColor id:(id)id sel:(SEL)sel view:(UIView *)view;

-(void) setButtonImage:(UIImage *)imgae title:(NSString *)title TheX:(float)thex TheY:(float)theY theW:(float)theW TheH:(float)theH view:(UIView *)view;

@end
