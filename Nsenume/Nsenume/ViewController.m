//
//  ViewController.m
//  Nsenume
//
//  Created by DuanShuyou on 12-12-27.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn setFrame:CGRectMake(30, 40, 280, 44)];
    [btn setTag:1];
    [btn setTitle:@"189" forState:UIControlStateNormal];
    [self.view addSubview:btn];
     
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTag:2];
    [btn1 setFrame:CGRectMake(30, 90, 280, 44)];
    [btn1 setTitle:@"289" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTag:3];
    [btn2 setFrame:CGRectMake(30, 150, 280, 44)];
    [btn2 setTitle:@"389" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(changeddd:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 230, 200, 44)];
    [label setText:@"111"];
    [self.view addSubview:label];
    
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

- (void)changeddd:(id)sender{
    
    for(id obj in self.view.subviews){
//        NSLog(@"%@",obj);

         
         if ([obj tag] ==1) {
             [obj removeFromSuperview];
             
             
         }
        
          
        
        UILabel *lbl = (UILabel *)obj;
        NSLog(@"%@",lbl);
        
//        for()
        
    
    
    }
    
}



@end
