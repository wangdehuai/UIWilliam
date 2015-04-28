@interface BaseSegmentedControl : UISegmentedControl

@property(nonatomic,retain)NSArray *titleArr;
@property(nonatomic,retain)UIView *activeLine;

-(void)setSegTitleTheY:(float)theY titles:(NSArray *)titles view:(UIView *)view;
-(void)setSegmentedTheY:(float)theY titles:(NSArray *)titles target:(id)target sel:(SEL)sel view:(UIView *)view;

@end
