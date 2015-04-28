@implementation BaseSegmentedControl

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
         [self setTintColor:CLEAR_COLOR];
        [self setBackgroundColor:WHITE_COLOR];
    }
    return self;
}

-(void)setSegTitleTheY:(float)theY titles:(NSArray *)titles view:(UIView *)view
{
    _titleArr = titles;
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName:BLACK_COLOR,NSFontAttributeName:FONT(15)} forState:UIControlStateSelected];
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName:BLACK_COLOR,NSFontAttributeName:FONT(15)} forState:UIControlStateNormal];
    [self setFrame:CGRectMake(0, theY, SCREEN_WIDTH, 44)];
    [self addTarget:nil action:nil forControlEvents:UIControlEventValueChanged];
    [view addSubview:self];
    [self createLineItemW:_titleArr.count];
}

-(void)setSegmentedTheY:(float)theY titles:(NSArray *)titles target:(id)target sel:(SEL)sel view:(UIView *)view
{
    _titleArr = titles;
    [self setSelectedSegmentIndex:0];
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:15.0]} forState:UIControlStateSelected];
    [self setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:15.0]} forState:UIControlStateNormal];
    [self setFrame:CGRectMake(0, theY, SCREEN_WIDTH, 44)];
    [self addTarget:target action:sel forControlEvents:UIControlEventValueChanged];
    [view addSubview:self];
    
    [self createBottomLine];
    [self createLineItemW:_titleArr.count];
    [self createActiveLine];
}

-(void)createLineItemW:(float)itemW
{
    itemW = SCREEN_WIDTH/_titleArr.count;
    for(int i=0;i<[_titleArr count];i++){
        UIView *shuLine = [[UIView alloc] initWithFrame:CGRectMake(itemW*i,12, 0.5, 20)];
        [shuLine setBackgroundColor:LIGHT_GRAYS_COLOR];
        [self addSubview:shuLine];
    }
}

-(void)createBottomLine
{
    UIView *bottomLine = [[UIView alloc] initWithFrame:CGRectMake(0, VIEW_H(self)-1, SCREEN_WIDTH, 1)];
    [bottomLine setBackgroundColor:LIGHT_GRAYS_COLOR];
    [self addSubview:bottomLine];
}

-(void)createActiveLine
{
    _activeLine = [[UIView alloc] initWithFrame:CGRectMake(0, VIEW_H(self)-2, SCREEN_WIDTH/_titleArr.count, 1)];
    [_activeLine setBackgroundColor:COLOR_THEME];
    [self addSubview:_activeLine];
}



@end
