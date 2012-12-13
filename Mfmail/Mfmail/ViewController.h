//
//  ViewController.h
//  Mfmail
//
//  Created by bravesoft on 12-12-13.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate>
- (IBAction)OpenMail:(id)sender;

@end
