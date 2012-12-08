//
//  ViewController.h
//  Learn_Delegate_Methods
//
//  Created by bravesoft on 12-12-8.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DsyDelegate.h"
#import "Dsy2Delegate.h"
//这里遵循dsydelegate,则实现协议中的方法,而委托设计模式就是让ViewController实现ViewControlle_B中的协议方法。在第一个界面实例化ViewControlle_B时候，设置了 vbc.delegate = self;(这里的self,可以理解为ViewController的实例)
@interface ViewController : UIViewController<DsyDelegate>
{
    
}

@property (nonatomic,assign)id<Dsy2Delegate>delegate;
- (IBAction)jp2Next:(id)sender;

@end
