//
//  ViewController.m
//  StudyOfBlock03
//
//  Created by DuanShuyou on 12-12-19.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
int GloableInt = 123;

int (^getGloableInt)(void)= ^{return GloableInt;};

@interface ViewController (){
   
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%d",getGloableInt());
    
    
    
    
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
