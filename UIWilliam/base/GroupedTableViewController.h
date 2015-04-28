@interface GroupedTableViewController : UITableViewController

@property(nonatomic,retain)NSMutableArray *array;

@property(nonatomic,retain)UIBarButtonItem *LeftItem;
@property(nonatomic,retain)UIBarButtonItem *rightItem;

-(void)setLeftItemWithTitle:(NSString *)title action:(SEL)sel;
-(void)setRightItemWithTitle:(NSString *)title action:(SEL)sel;

@end
