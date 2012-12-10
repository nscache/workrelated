//
//  ViewController.m
//  Singlten_Method
//
//  Created by bravesoft on 12-12-9.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"
#import "ViewControllerb.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Singleton *sing = [Singleton sharedInstance];
    sing.name = @"123";
    
    ViewControllerb *bvc = [[ViewControllerb alloc] init];
     
    [self presentModalViewController:bvc animated:YES];
    
    [bvc release];
    
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
