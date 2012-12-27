//
//  ViewController.m
//  kvoDemo02
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
    girl = [[Beauty alloc] init];
    girl.mood = @"Happy";
    
    [girl addObserver:self forKeyPath:@"mood" options:NSKeyValueObservingOptionNew context:nil];
    
    
}

- (void)dealloc{
    [girl release];
    [super dealloc];
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if (keyPath == @"mood") {
        NSLog(@"jinlaile");

    }
    
    

    
    
    NSLog(@"%@",self.view.subviews);
    
    
   
    if (lbl ==nil) {
        
        lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 240, 40)];
        [lbl setText:@"I love you!"];
        
        [self.view addSubview:lbl];
        
        [lbl release];

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

- (IBAction)changeName:(id)sender {
    
    girl.mood = @"okok189";
    
            
}
@end
