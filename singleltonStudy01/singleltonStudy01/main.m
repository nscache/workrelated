//
//  main.m
//  singleltonStudy01
//
//  Created by DuanShuyou on 12-12-20.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserContext.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        UserContext *user = [[UserContext alloc] init];
        
        user.userName = @"dsy189legend";
        
        
        NSLog(@"%@",user.userName);
        
        [user release];
        NSLog(@"");
        
    }
    return 0;
}

