//
//  DsyDelegate.h
//  Learn_Delegate_Methods
//
//  Created by bravesoft on 12-12-8.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DsyDelegate <NSObject>
@required
-(void)showNslog:(NSString *)str_;
@end
