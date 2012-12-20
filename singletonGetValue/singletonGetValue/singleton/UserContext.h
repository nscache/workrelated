//
//  UserContext.h
//  singleltonStudy01
//
//  Created by DuanShuyou on 12-12-20.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserContext : NSObject
{
    
}
//创建单例的属性

@property(nonatomic,copy) NSString *userName;
@property(nonatomic,copy) NSString *userInfo;

//创建单例方法

+(id)shareUser;

@end
