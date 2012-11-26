//
//  ViewController.m
//  DelegateDemo02
//
//  Created by bravesoft on 12-11-26.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"123";
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];


}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
