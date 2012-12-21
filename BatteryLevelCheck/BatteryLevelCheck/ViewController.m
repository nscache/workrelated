//
//  ViewController.m
//  BatteryLevelCheck
//
//  Created by DuanShuyou on 12-12-21.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(checkBattery:) name:UIDeviceBatteryLevelDidChangeNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(checkBattery:) name:UIDeviceBatteryStateDidChangeNotification object:nil];
    
}


- (void)checkBattery:(id)sender{
    
    NSArray *stateArray = [NSArray arrayWithObjects:@"电池状态未知",@"充电器未插入",@"充电中",@"充电完成", nil];
    NSLog(@"%0.2f",[[UIDevice currentDevice] batteryLevel]*100);
    NSLog(@"电池状态%@",[stateArray objectAtIndex:[[UIDevice currentDevice] batteryState]]
);
    
}

- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeAllActions];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
