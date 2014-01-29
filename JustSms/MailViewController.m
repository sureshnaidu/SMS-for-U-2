//
//  MailViewController.m
//  JustSms
//
//  Created by iPap Student on 17/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import "MailViewController.h"
@interface MailViewController ()

@end

@implementation MailViewController
@synthesize mainMessage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
           }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background .png"]];      self.label.text=mainMessage;
    
    [self.label setTextColor:[UIColor purpleColor]];

}



- (IBAction)btnEmail_Clicked:(id)sender
{
	MFMailComposeViewController* controller = [[MFMailComposeViewController alloc] init];
	controller.mailComposeDelegate = self;
	[controller setToRecipients:[NSArray arrayWithObject:@""]];
	[controller setSubject:@"iPhone Email Example Mail"];
	[controller setMessageBody:mainMessage isHTML:NO];
	[self presentViewController:controller animated:YES completion:nil];
	[controller release];
}

- (IBAction)btnMessage_Clicked:(id)sender
{
	MFMessageComposeViewController *controller = [[[MFMessageComposeViewController alloc] init] autorelease];
	if([MFMessageComposeViewController canSendText])
	{
		controller.body = mainMessage;
		controller.recipients = [NSArray arrayWithObjects:@"+919999999999", nil];
		controller.messageComposeDelegate = self;
		[self presentViewController:controller animated:YES completion:nil];
	}
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
	
	switch (result) {
		case MessageComposeResultCancelled:
			NSLog(@"Cancelled");
			break;
		case MessageComposeResultFailed:
			NSLog(@"Failed");
			break;
		case MessageComposeResultSent:
			NSLog(@"Send");
			break;
		default:
			break;
	}
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
	
	if (result == MFMailComposeResultSent) {
		NSLog(@"It's away!");
	}
	[self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)facebook:(id)sender{
    SLComposeViewController *facebook = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [facebook setInitialText:mainMessage];
     
    [self presentViewController:facebook animated:YES completion:nil];
}

- (IBAction)twitter:(id)sender {
    SLComposeViewController *twitter = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [twitter setInitialText:mainMessage];
    
    
    [self presentViewController:twitter animated:YES completion:nil];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (void)dealloc {
    [_label release];
    [super dealloc];
}
@end
