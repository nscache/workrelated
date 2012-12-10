//
//  ViewControllerb.m
//  Singlten_Method
//
//  Created by bravesoft on 12-12-9.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewControllerb.h"
#import "Singleton.h"
@interface ViewControllerb ()

@end

@implementation ViewControllerb

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
    Singleton *sing = [Singleton sharedInstance];
    NSLog(@"%@",sing.name);
    
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

@end
