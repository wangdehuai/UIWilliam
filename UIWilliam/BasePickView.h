@interface BasePickView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,retain) NSMutableArray *listArr;

-(NSString *)checkClick;

@end
