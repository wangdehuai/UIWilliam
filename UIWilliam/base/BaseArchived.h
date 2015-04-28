@interface BaseArchived : NSObject

+(void)Archiver:(NSDictionary *)OnLineDict dictName:(NSString *)dictName;
+(NSDictionary *)UnArchiver:(NSString *)dictName;

@end
