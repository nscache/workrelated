//
//  main.m
//  block-study
//
//  Created by DuanShuyou on 12-12-18.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        void (^myblocks) (void) = NULL;
        myblocks = ^(void) {
            NSLog(@"in blocks");
        };
        NSLog(@"before myblocks");
        myblocks();
        NSLog(@"after myblocks");
        
        
        int (^myblocks2) (int a, int b) = ^(int a, int b) {
            int c = a + b;
            return c;
        };
        NSLog(@"before blocks2");
        int ret = myblocks2(10, 20);
        NSLog(@"after blocks2 ret %d", ret);
        
        //此处如果不加__block会报错
        __block int sum = 0;
        int (^myblocks3) (int a, int b) = ^(int a, int b) {
            sum = a + b;
            return sum;
        };
        myblocks3(20, 30);
        NSLog(@"sum is %d", sum);
        
        
        void (^nsBlock)(NSString *) = ^(NSString *dsy){
        
            NSMutableString *shuyou = [NSMutableString stringWithFormat:dsy];
            
            NSLog(@"%@",shuyou);
            
        };
        
        nsBlock(@"你叫什么名字？");
        
    }
    return 0;
}

