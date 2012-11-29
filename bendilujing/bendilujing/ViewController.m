//
//  ViewController.m
//  bendilujing
//
//  Created by bravesoft on 12-11-29.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *homeDirectory = NSHomeDirectory();
    
    NSLog(@"%@",homeDirectory);
    
    
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSLog(@"path:%@", path);
    
    
    
    NSArray *paths1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path1 = [paths1 objectAtIndex:0];
    NSLog(@"%@", path1);
    
    
    
    NSArray *lib = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
    NSString *libstr = [lib objectAtIndex:0];
    
    NSLog(@"%@",libstr);
    
    
    NSString *tem = NSTemporaryDirectory();

    
    NSLog(@"%@",tem);
    
    
    
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
