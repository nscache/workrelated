//
//  ViewController.m
//  Mfmail
//
//  Created by bravesoft on 12-12-13.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
#import "ViewController22.h"

@interface ViewController ()
{
    NSString *msg_;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OpenMail:(id)sender {
    
    if ([MFMailComposeViewController canSendMail])
        //检测是否配置邮件，可以发送邮件
    {
        MFMailComposeViewController *mailPicker = [[MFMailComposeViewController alloc] init];
        
        mailPicker.mailComposeDelegate = self;
        
        //设置主题
        [mailPicker setSubject: @"eMail主题"];
        
        // 添加发送者
        NSArray *toRecipients = [NSArray arrayWithObject: @"first@example.com"];
        //NSArray *ccRecipients = [NSArray arrayWithObjects:@"second@example.com", @"third@example.com", nil];
        //NSArray *bccRecipients = [NSArray arrayWithObject:@"fourth@example.com", nil];
        [mailPicker setToRecipients: toRecipients];
        //[picker setCcRecipients:ccRecipients];
        //[picker setBccRecipients:bccRecipients];
        
        /*
         // 添加图片
         UIImage *addPic = [UIImage imageNamed: @"123.jpg"];
         NSData *imageData = UIImagePNGRepresentation(addPic);            // png
         // NSData *imageData = UIImageJPEGRepresentation(addPic, 1);    // jpeg
         [mailPicker addAttachmentData: imageData mimeType: @"" fileName: @"123.jpg"];
         */
        
        NSString *emailBody = [NSString stringWithFormat:@"Mac_address"];
        [mailPicker setMessageBody:emailBody isHTML:YES];
        
        [self presentViewController:mailPicker animated:YES completion:Nil];
        //    [self presentModalViewController: mailPicker animated:YES];
        [mailPicker release];

    }
else{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"警告" message:@"请配置邮件账户" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    
}
    
    
    

}

#pragma mark -发送邮件状态反馈
- (void) alertWithTitle: (NSString *)_title_ msg: (NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:_title_
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
    [alert release];
}
#pragma mark -mailComposeController Delegate Method
// mailComposeController Delegate Method
- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    
    switch (result)
    {
        case MFMailComposeResultCancelled:
            msg_ = @"邮件发送取消";
            [self alertWithTitle:nil msg:msg_];
            break;
        case MFMailComposeResultSaved:
            msg_ = @"邮件保存成功";
            [self alertWithTitle:nil msg:msg_];
            break;
        case MFMailComposeResultSent:
            msg_ = @"邮件发送成功";
            [self alertWithTitle:nil msg:msg_];
            break;
        case MFMailComposeResultFailed:
            msg_ = @"邮件发送失败";
            [self alertWithTitle:nil msg:msg_];
            break;
        default:
            break;
    }
    
//    [self dismissModalViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:Nil];
}


@end
