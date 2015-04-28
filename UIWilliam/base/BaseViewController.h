@interface BaseViewController : UIViewController

@property(nonatomic,retain)UIBarButtonItem *LeftItem;
@property(nonatomic,retain)UIBarButtonItem *rightItem;

-(void)setLeftItemWithTitle:(NSString *)title action:(SEL)sel;
-(void)setRightItemWithTitle:(NSString *)title action:(SEL)sel;

-(void)setLeftItemWithImgStr:(NSString *)imgStr action:(SEL)sel;
-(void)setRightItemWithImgStr:(NSString *)imgStr action:(SEL)sel;

@end
