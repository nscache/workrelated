//
//  ViewController.m
//  UseBlockToChangeLabelText
//
//  Created by DuanShuyou on 12-12-18.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *mylabel01 = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 240, 30)];
    mylabel01.text = @"18982342189";
    
    
    [self.view addSubview:mylabel01];
    
    
    [mylabel01 release];
    
    UITextField *mytextFieled01 = [[UITextField alloc] initWithFrame:CGRectMake(0, 80, 200, 30)];
    mytextFieled01.placeholder = @"小于3位数的判断";
    [mytextFieled01 setDelegate:self];
    
    
    [self.view addSubview:mytextFieled01];
    [mytextFieled01 release];
    
    if (mytextFieled01.text.length == 3) {
        NSLog(@"123");
    }
    
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if (textField.text.length == 3) {
        
        NSLog(@"111111");
        return NO;
    }
    else{
        return YES;
        //retrun yes then the textField can not be edited
    }
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
