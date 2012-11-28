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


//调到下个页面，此时设置下个页的delegate方法给ViewController本身,这个协议及自定义的协议，协议的是由B来配置的，那么B里面可以检测到其是否将自己的delegate委托给某人,这里是委托给ViewController,让它来完成本来应该让B自己来做的事情，现在由A代劳;
-(void)jp2next
    {
        ViewControllerB *bvc = [[ViewControllerB alloc] init];
        bvc.delegate = self;
        [self.navigationController pushViewController:bvc animated:YES];
        
        [bvc release];
        
    }


//delegate's method


//step02
//这样viewController和viewcontrollerB就产生了通信

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
