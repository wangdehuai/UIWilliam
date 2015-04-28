@interface BaseModel : NSObject<NSCoding>

@property (nonatomic, copy) NSDictionary *baseDict;
-(id)initWithDic:(NSDictionary *)dict;

@end
