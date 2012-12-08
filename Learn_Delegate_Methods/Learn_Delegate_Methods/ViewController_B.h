//
//  ViewController_B.h
//  Learn_Delegate_Methods
//
//  Created by bravesoft on 12-12-8.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DsyDelegate.h"
#import "Dsy2Delegate.h"

@interface ViewController_B : UIViewController<Dsy2Delegate>

{
    NSString *myName;
}

-(void)func1;

@property(nonatomic,assign)id<DsyDelegate>delegate;

@end
