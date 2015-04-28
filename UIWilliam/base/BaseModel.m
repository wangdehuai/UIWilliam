//
//  BaseModel.m
//  JSD
//
//  Created by Mac on 15/1/14.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

-(id)initWithDic:(NSDictionary *)dict
{
    self = [super init];
    if(self)
    {
        self.baseDict = dict;
    }
    return self;
}

#pragma mark -编码
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.baseDict forKey:@"baseDict"];
}

#pragma mark -解码
-(id)initWithCoder:(NSCoder *)aDecoder
{
    if(self=[super init])
    {
        self.baseDict=[aDecoder decodeObjectForKey:@"baseDict"];
        
        NSArray *keys;
        int i, count;
        id key, value;
        
        keys = [_baseDict allKeys];
        count = [keys count];
        for (i = 0; i < count; i++)
        {
            key = [keys objectAtIndex: i];
            value = [_baseDict objectForKey: key];
            NSLog (@"Key: %@ for value: %@", key, value);
        }
        
    }
    return self;
}

@end