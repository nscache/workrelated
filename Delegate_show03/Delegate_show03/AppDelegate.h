//
//  AppDelegate.h
//  Delegate_show03
//
//  Created by bravesoft on 12-11-28.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (nonatomic,strong) UINavigationController *nav;

@end
