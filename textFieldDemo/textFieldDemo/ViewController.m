//
//  ViewController.m
//  textFieldDemo
//
//  Created by bravesoft on 12-12-7.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, 200, 44)];
    [textField setDelegate:self];
    textField.tag = 1010;
    [textField setBackgroundColor:[UIColor lightGrayColor] ];
    
    [self.view addSubview:textField];
    
    [textField release];
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Enter Name Here"
                                                    message:@"this gets covered!" delegate:self
                                          cancelButtonTitle:@"Dismiss" otherButtonTitles:@"OK!", nil];
    
    UITextField *myTextField = [[UITextField alloc]
                                initWithFrame:CGRectMake(12, 45, 260, 25)];
    
    CGAffineTransform myTransform = CGAffineTransformMakeTranslation(0, 60);
    
    [alert setTransform:myTransform];

    
    [myTextField setBackgroundColor:[UIColor whiteColor]];
    
    [alert addSubview:myTextField];
    
    [alert show];
    
    [alert release];
    [myTextField release];

    
    
}


- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    NSLog(@"12222");
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    [textField resignFirstResponder];
    
    return YES;
    
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
