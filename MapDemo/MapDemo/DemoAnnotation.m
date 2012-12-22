//
//  DemoAnnotation.m
//  MapDemo
//
//  Created by DuanShuyou on 12-12-22.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import "DemoAnnotation.h"

@implementation DemoAnnotation
@synthesize coordinate = _coordinate;

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate{
    self = [super init];
    if (self) {
        _coordinate = coordinate;
    }
    return self;
}

-(void)setCoordinate:(CLLocationCoordinate2D)newCoordinate{
	_coordinate=newCoordinate;
}

-(NSString *)title{
	return @"我的位置";
}

-(NSString *)subtitle{
	return nil;
}
@end
