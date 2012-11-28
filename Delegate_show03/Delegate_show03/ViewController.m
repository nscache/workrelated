//
//  ViewController.m
//  Delegate_show03
//
//  Created by bravesoft on 12-11-28.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerB.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lbe;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lbe = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, 120, 44)];
    lbe.textAlignment = UITextAlignmentCenter;
    lbe.font = [UIFont systemFontOfSize:18];
    
    UIButton *btn =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
     btn.frame = CGRectMake(0,200, 200, 44);
    [btn addTarget:self action:@selector(jp2next) forControlEvents:UIControlEventTouchUpInside];
     
    [self.view addSubview:btn];
    [self.view addSubview:lbe];
    
    [lbe release];
    
}

- (void)viewDidUnload
    {
        [super viewDidUnload];
        // Release any retained subviews of the main view.
    }

-(void)jp2next
    {
        ViewControllerB *bvc = [[ViewControllerB alloc] init];
        bvc.delegate = self;
        [self.navigationController pushViewController:bvc animated:YES];
        
        [bvc release];
        
    }


//delegate's method


-(void)showName:(NSString *)name
    {
        NSLog(@"将b的delegate指定给a,让a来实现");
        lbe.text = [NSString stringWithFormat:@"%@",name];
        NSLog(@"%@",name);
        
    }


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
