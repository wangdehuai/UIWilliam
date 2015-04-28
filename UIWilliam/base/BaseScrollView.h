@interface BaseScrollView : UIScrollView<UIScrollViewDelegate>

-(void)setBGcolor:(UIColor *)bgColor contentW:(float)contentW contentH:(float)contentH havesH:(BOOL)havesH havesV:(BOOL)havesV isPage:(BOOL)isPage isEnable:(BOOL)isEnable view:(UIView *)view;

@end
