//
//  DemoAnnotation.h
//  MapDemo
//
//  Created by DuanShuyou on 12-12-22.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface DemoAnnotation : NSObject<MKAnnotation>{
    CLLocationCoordinate2D _coordinate;

}
-(id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;


@end
