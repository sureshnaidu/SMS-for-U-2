//
//  MailViewController.h
//  JustSms
//
//  Created by iPap Student on 17/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "SecondTabelViewController.h"

@interface MailViewController : UIViewController<MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate> 

- (IBAction)btnEmail_Clicked:(id)sender;
- (IBAction)btnMessage_Clicked:(id)sender;
- (IBAction)facebook:(id)sender;
- (IBAction)twitter:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *label;

@property (nonatomic, retain) NSString *mainMessage;



@end
