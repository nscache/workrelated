//
//  ViewController.m
//  Learn_Delegate_Methods
//
//  Created by bravesoft on 12-12-8.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
#import "ViewController_B.h"
@interface ViewController ()
{
    UILabel *lbl;
}
@end

@implementation ViewController
@synthesize delegate;

-(void)dealloc{
    //释放全局变量
    [lbl release];
    [super dealloc];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 250, 200,22)];
    [lbl adjustsFontSizeToFitWidth];
    [lbl setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:lbl];
    
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

- (IBAction)jp2Next:(id)sender {
    
    ViewController_B *vbc = [[ViewController_B alloc] init];
    vbc.delegate = self;
    //设置委托，获取下个界面传递回来的参数
    [self.navigationController pushViewController:vbc animated:YES];
    [vbc release];
    
    
    //这个界面传递参数给下个界面，到此委托的设计模式逐渐清晰
    //这个delegate是实现了dsy2Delegate的方法；
    self.delegate = vbc;
    [self.delegate transmit2Next:@"哇哈哈"];
    
}
//委托传值回来
-(void)showNslog:(NSString *)str_{
    NSLog(@"%@",str_);
    
    [lbl setText:str_];
}

@end
