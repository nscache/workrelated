//
//  ViewController.h
//  Delegate_show03
//
//  Created by bravesoft on 12-11-28.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "xyzDelegate.h"

@interface ViewController : UIViewController<xyzDelegate>
{
    UILabel *lbe;
}

@property (nonatomic,retain)UILabel *lbe;

@end
