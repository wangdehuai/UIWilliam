@interface BaseLRTableViewController : BaseViewController

@property (nonatomic, retain)   NSArray *leftArray ;
@property (nonatomic, retain)  NSArray *rightArray;
@property (nonatomic, retain)  UITableView *tableView;
@property (nonatomic, assign) float rowHeight;

@end
