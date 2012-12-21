//
//  ViewController.m
//  MapDemo
//
//  Created by DuanShuyou on 12-12-21.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cllocationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 40, 240, 44);
    [btn setTitle:@"update" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(findMe:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    jingdu = [[UILabel alloc] initWithFrame:CGRectMake(30, 100, 260, 44)];
    weidu  = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 260, 44)];
    
    [self.view addSubview:jingdu];
    [self.view addSubview:weidu];
        
}

- (void)findMe:(id)sender{
    self.cllocationManager = [[[CLLocationManager alloc] init] autorelease];
    self.cllocationManager.delegate = self;
    self.cllocationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.cllocationManager.distanceFilter = 1000.0f;
    [self.cllocationManager startUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    weidu.text = [NSString stringWithFormat:@"%3.5f",newLocation.coordinate.latitude];
    jingdu.text = [NSString stringWithFormat:@"%3.5f",newLocation.coordinate.longitude];
//    [CLLocationManager stopUpdatingLocation];
    [cllocationManager stopUpdatingLocation];
    NSLog(@"location ok");
}


- (void)dealloc{
    [jingdu release];
    [weidu release];
    
    [super dealloc];
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
