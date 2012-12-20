//
//  main.m
//  studOfBlock
//
//  Created by bravesoft on 12-12-17.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        int (^Myblock1)(int,int)=^(int a,int b){
            return a*b;
        };
        
        NSLog(@"%d",Myblock1(5,3));
        
        
        
        
        
        NSArray *array = [NSArray arrayWithObjects: @"A", @"B", @"C", @"A", @"B", @"Z",@"G", @"are", @"Q", nil];
        
        NSSet *filterSet = [NSSet setWithObjects: @"A", @"Z", @"Q", nil];
        
        BOOL (^test)(id obj, NSUInteger idx, BOOL *stop);
        
        test = ^ (id obj, NSUInteger idx, BOOL *stop) {
            if (idx < 5) {
                if ([filterSet containsObject: obj]) {
                    return YES;
                }
            }
            return NO;
        };
        NSIndexSet *indexes = [array indexesOfObjectsPassingTest:test];
        NSLog(@"indexes: %@", indexes);
        /*
         Output:
         indexes: <NSIndexSet: 0x10236f0>[number of indexes: 2 (in 2 ranges), indexes: (0 3)]
         */
        
        
        
        
        
        
        
    }
    return 0;
}

