//
//  ViewController2.m
//  singletonGetValue
//
//  Created by DuanShuyou on 12-12-20.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController2.h"
#import "UserContext.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)getValue:(id)sender {
    
    UserContext *user = [UserContext shareUser];
    
    NSLog(@"%@,%@",user.userInfo,user.userName);
    
}
@end
