//
//  BaseArchived.m
//  JSD
//
//  Created by Mac on 15/1/18.
//  Copyright (c) 2015年 wangdehuai. All rights reserved.
//

#import "BaseArchived.h"
#import "BaseModel.h"

@implementation BaseArchived

+(void)Archiver:(NSDictionary *)OnLineDict dictName:(NSString *)dictName
{
    BaseModel *model = [[BaseModel alloc]initWithDic:OnLineDict];
    //文件归档
    NSMutableData *data = [NSMutableData data];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    [archiver encodeObject:model forKey:dictName];
    [archiver finishEncoding];
    //将数据写入文件里
    [data writeToFile:[self filePath:dictName] atomically:YES];
}

+(NSDictionary *)UnArchiver:(NSString *)dictName
{
    //反归档
    NSMutableData *data1 = [NSMutableData dataWithContentsOfFile:[self filePath:dictName]];
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc]initForReadingWithData:data1];
    BaseModel *base = [unarchiver decodeObjectForKey:dictName];
    return   base.baseDict;
}

+(NSString *)filePath:(NSString *)dictName
{
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *path = [docPath stringByAppendingPathComponent:dictName];
    return path;
}

@end
