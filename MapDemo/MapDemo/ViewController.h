//
//  ViewController.h
//  MapDemo
//
//  Created by DuanShuyou on 12-12-21.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>
{
    CLLocationManager *cllocationManager;
    UILabel *jingdu;
    UILabel *weidu;
    UILabel *locationInfo;
    MKMapView *_mapView;
    UILabel *timeStamp;
    
}

@property (nonatomic,strong) CLLocationManager *cllocationManager;


- (void)findMe:(id)sender;
//- (void)webMap:(id)sender;

@end
