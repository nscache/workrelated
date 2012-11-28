//
//  ViewControllerB.m
//  Delegate_show03
//
//  Created by bravesoft on 12-11-28.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewControllerB.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB
@synthesize delegate;

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
    
    UIControl *viewControl = [[UIControl alloc] initWithFrame:[[UIScreen mainScreen] bounds]]; [viewControl addTarget:self action:@selector(resignKeyboard) forControlEvents:UIControlEventTouchUpInside];
    self.view = viewControl;
    viewControl.backgroundColor = [UIColor whiteColor];
    
    [viewControl release];
    
    UIButton *btn =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"委托给A来打印" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0,148, 200, 44);
    [btn addTarget:self action:@selector(jp2next) forControlEvents:UIControlEventTouchUpInside];
    
    UITextField *text = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, 200, 44)];
    text.tag = 1001;
    text.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:btn];
    [self.view addSubview:text];
    
    

    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


-(void)jp2next{
    if ([delegate respondsToSelector:@selector(showName:)])
    {
        
        UITextField *mytext = (UITextField *)[self.view viewWithTag:1001];
        
        [delegate showName:mytext.text];
    }
}

-(void)resignKeyboard{
    UITextField *mytext = (UITextField *)[self.view viewWithTag:1001];
    [mytext resignFirstResponder];
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
