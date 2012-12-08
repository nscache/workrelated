//
//  ViewController_B.m
//  Learn_Delegate_Methods
//
//  Created by bravesoft on 12-12-8.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController_B.h"

@interface ViewController_B ()

@end

@implementation ViewController_B
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
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(20, 40, 200, 44);
    [btn1 setTitle:@"代理方法传值" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(func1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
   
}


//点击后给委托发消息，具体实现由遵循该协议的另一个类中去实现，这里让delegate接受消息后，在ViewController中就会执行该协议中的方法(dsyDelegate)中的-(void)showNslog:(NSString *)str_;

-(void)func1{
    
    NSLog(@"1111");
    [self.delegate showNslog:@"dsy189legend"];
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

//由第一个页面传递过来的值，采用委托获取的值，这里完全没有必要设置委托，从前到后再返回前，让后者设置属性，或者存取方法即可接受参数；这里是因为它.h中遵循了dsy2delegate,这个方法的代理实现放在第一个页面中来实现,在第一个页面中设置了两个对象（实例对象的交互），这里是为了搞清楚二者间的关系，故设置了这样的笨方法。

-(void)transmit2Next:(NSString *)str_{
    NSLog(@"这里由第一个页面传递了值过来 is %@",str_);
}


@end
