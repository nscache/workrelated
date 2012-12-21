//
//  ViewController.h
//  MapDemo
//
//  Created by DuanShuyou on 12-12-21.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *cllocationManager;
    UILabel *jingdu;
    UILabel *weidu;
    
}

@property (nonatomic,strong) CLLocationManager *cllocationManager;


- (void)findMe:(id)sender;
//- (void)webMap:(id)sender;

@end
