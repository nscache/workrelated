//
//  ViewController.m
//  MapDemo
//
//  Created by DuanShuyou on 12-12-21.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import "ViewController.h"
#import "DemoAnnotation.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cllocationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(30, 40, 240, 44);
    [btn setTitle:@"update" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(findMe:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    jingdu = [[UILabel alloc] initWithFrame:CGRectMake(30, 100, 260, 44)];
    weidu  = [[UILabel alloc] initWithFrame:CGRectMake(30, 150, 260, 44)];
    locationInfo = [[UILabel alloc] initWithFrame:CGRectMake(30, 210, 260, 200)];
    
    [self.view addSubview:jingdu];
    [self.view addSubview:weidu];
    
    _mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0.0, 70, 320.0, 460.0)];
    _mapView.delegate =self;
    [self.view addSubview:_mapView];
    
}

- (void)findMe:(id)sender{
    self.cllocationManager = [[[CLLocationManager alloc] init] autorelease];
    self.cllocationManager.delegate = self;
    self.cllocationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.cllocationManager.distanceFilter = 1.0f;
    [self.cllocationManager startUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    weidu.text = [NSString stringWithFormat:@"%3.5f",newLocation.coordinate.latitude];
    jingdu.text = [NSString stringWithFormat:@"%3.5f",newLocation.coordinate.longitude];
//    [CLLocationManager stopUpdatingLocation];
    [cllocationManager stopUpdatingLocation];
    NSLog(@"location ok");
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder reverseGeocodeLocation: newLocation completionHandler:^(NSArray *array, NSError *error) {
        if (array.count > 0) {
            CLPlacemark *placemark = [array objectAtIndex:0];
            NSString *country = placemark.ISOcountryCode;
            NSString *city = placemark.locality;
            NSLog(@"%@",city);
            NSLog(@"%@",country);
            locationInfo.text = [NSString stringWithFormat:@"国家:%@,城市:%@,其他信息:%@",country,city,placemark];
            locationInfo.textAlignment = UITextAlignmentCenter;
            locationInfo.textColor = [UIColor redColor];
            locationInfo.numberOfLines = 0;
//            [self.view addSubview:locationInfo];
            

        }
    }];
    
    //计算距离差
    
//    CLLocation *old = [[CLLocation alloc] initWithLatitude:oldLocation.coordinate.latitude longitude:oldLocation.coordinate.longitude];
//    
//    CLLocation *new = [[CLLocation alloc] initWithLatitude:newLocation.coordinate.latitude longitude:newLocation.coordinate.longitude];
//    
//    CLLocationDistance distance = [new distanceFromLocation:old]/1000;
//    
//    NSLog(@"距离%f",distance);
    
    DemoAnnotation *annotation = [[DemoAnnotation alloc] initWithCoordinate:newLocation.coordinate];
	[_mapView addAnnotation:annotation];
	[annotation release];
    
}

-  (MKAnnotationView *)mapView:(MKMapView *)mapView
             viewForAnnotation:(id <MKAnnotation>)annotation
{
    NSString *annotationViewId=@"CurrentUserAnnotationView";
    MKPinAnnotationView *annotationView = (MKPinAnnotationView *)
    [mapView dequeueReusableAnnotationViewWithIdentifier:annotationViewId];
    if (annotationView==nil)
    {
        annotationView = [[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:annotationViewId] autorelease];
        annotationView.canShowCallout = YES;
    }
    return annotationView;
}


- (void)dealloc{
    [_mapView release];
    [locationInfo release];
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
