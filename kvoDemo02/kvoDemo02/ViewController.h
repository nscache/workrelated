//
//  ViewController.h
//  kvoDemo02
//
//  Created by DuanShuyou on 12-12-27.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Beauty.h"

@interface ViewController : UIViewController
{
    Beauty *girl;
    UILabel *lbl;
}
- (IBAction)changeName:(id)sender;

@end
