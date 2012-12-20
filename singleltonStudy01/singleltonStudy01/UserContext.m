//
//  UserContext.m
//  singleltonStudy01
//
//  Created by DuanShuyou on 12-12-20.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "UserContext.h"
static UserContext *singInstance = nil;

@implementation UserContext
@synthesize userName;
@synthesize userInfo;

+ (id)shareUser{
    
    @synchronized(self){
        if (singInstance == nil) {
            
            singInstance = [[[self class] alloc] init];
        }
    }
            
    return singInstance;
}

+ (id)allocWithZone:(NSZone *)zone{
    if (singInstance == nil) {
        
        singInstance = [super allocWithZone:zone];
        
    }
    return singInstance;
}

- (id)copyWithZone:(NSZone *)zone{
    return singInstance;
}

- (id)retain{
    return singInstance;
}

- (oneway void)release{
    
}
- (id)autorelease{
    return singInstance;
}

@end
