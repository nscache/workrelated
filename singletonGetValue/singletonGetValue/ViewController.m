//
//  ViewController.m
//  singletonGetValue
//
//  Created by DuanShuyou on 12-12-20.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
#import "UserContext.h"

#import "ViewController2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UserContext *user = [UserContext shareUser];
    user.userName = @"dsy189legend";
    user.userInfo = @"今天是个好日子";
    
    
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

- (IBAction)J2Next:(id)sender {
    
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
    [vc2 release];
}
@end
