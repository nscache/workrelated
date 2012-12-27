//
//  main.m
//  KvcAndKvo
//
//  Created by DuanShuyou on 12-12-27.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSLog(@"Hello, World!");
        
        Book *abook = [[Book alloc] init];
        
        Author *author = [[Author alloc] init];
        
        [author setValue:@"jack" forKey:@"name"];
        [abook setValue:author forKey:@"_author"];
        
        [abook setValue:@"Hello,Chengdu" forKey:@"name"];
        
        
        
        NSString *nameis = [abook valueForKey:@"name"];
        NSLog(@"the book name is %@",nameis);
        
        
        [abook setValue:@"duanhai" forKeyPath:@"_author._name"];
        
        NSString *authorName = [abook valueForKeyPath:@"_author._name"];
        NSLog(@"%@",authorName);
//        [abook release];
        
        
        
        
        NSMutableArray *releBooks = [NSMutableArray arrayWithCapacity:3];
        for(int i = 0;i<3;i++){
            
            Book *book = [[Book alloc] init];
            
            NSString *name = [NSString stringWithFormat:@"jobs_%d",i];
            
            [book setValue:name forKey:@"_name"];
            
            [releBooks addObject:book];
            
            [book release];
            
        }
        
        //相当于书的这个属性获取对应的值
        [abook setValue:releBooks forKey:@"_relativeBooks"];
        
        NSArray *names = [abook valueForKeyPath:@"_relativeBooks.name"];
        
        NSLog(@"%@",names);
        
        //求和的计算以及kvc提供的其他机制要多学习下
        
        [abook release];
        
    }
    return 0;
}

