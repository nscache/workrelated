//
//  Singleton.h
//  Singleton
//
//  Created by Carlo Chung on 6/10/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Singleton : NSObject 
{

    NSString *name;
}

@property(nonatomic,retain)NSString *name;
+ (Singleton *) sharedInstance;

- (void) operation;


@end
