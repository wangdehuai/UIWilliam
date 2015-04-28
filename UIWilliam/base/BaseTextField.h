@interface BaseTextField : UITextField

-(void)setTextFieleTishi:(NSString *)tishi y:(float)theY keytype:(UIKeyboardType)keytype isPass:(BOOL)isPass view:(UIView *)view;
-(void)setTextFieleConnect:(NSString *)connect y:(float)theY view:(UIView *)view;

-(void)setCheckTheW:(float)theW  y:(float)theY view:(UIView *)view;


-(void)setTextFieleTishi:(NSString *)tishi x:(float)theX y:(float)theY w:(float)theW h:(float)height view:(UIView *)view;
-(void)settextFeildLeftTitle:(NSString *)title tColor:(UIColor *)tColor rightTitle:(NSString *)rightStr rColor:(UIColor *)rColor y:(float)theY view:(UIView *)view;


-(void)settextFeildLeftSel:(SEL)leftSel leftId:(id)leftId rightSel:(SEL)rightSel rightId:(id)rightId tishi:(NSString *)tishi y:(float)theY view:(UIView *)view;

@end
