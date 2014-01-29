//
//  HomeViewController.m
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.adView.delegate = self;
self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.png"]];    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackTranslucent;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    self.navigationItem.title=@"HOME";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
    
   
        self.time= [NSTimer scheduledTimerWithTimeInterval:0.002 target:self selector:@selector(buttongone:) userInfo:nil repeats:YES];
    
    
    
    [self.time fire];
    
    
}


-(IBAction)buttongone:(id)sender{
        CGFloat curx=self.image.center.x;
        CGFloat cury=self.image.center.y;
        self.image.center=CGPointMake(curx, cury+1);
    
  

    
        CGFloat curX=self.button.center.x;
        CGFloat curY=self.button.center.y;
        self.button.center=CGPointMake(curX-0.5, curY-1);
    
    CGFloat curxx=self.aboutapp.center.x;
    CGFloat curyy= self.aboutapp.center.y;
    self.aboutapp.center=CGPointMake(curxx+0.7, curyy-0.5);
    
  
if(cury == 720)
{
    
    [self.time invalidate];
    self.firstView=[[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
    
    [self.navigationController pushViewController:self.firstView animated:YES];
    
    }


}

- (IBAction)aboutus:(id)sender {
    self.aboutUs = [[AboutUsViewController alloc]initWithNibName:@"AboutUsViewController" bundle:nil];
   self.aboutUs.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:self.aboutUs animated:YES completion:nil];
   
   //[self.navigationController pushViewController:self.aboutUs animated:YES];

    
}
- (void)dealloc {
    
    [_button release];
    [_image release];
    [_aboutapp release];
    [_adView release];
    [super dealloc];
}


- (IBAction)aboutapp:(id)sender {
    self.aboutApp =[[AboutAppViewController alloc]initWithNibName:@"AboutAppViewController" bundle:nil];
    
    [self.navigationController pushViewController:self.aboutApp animated:YES];
   
}

- (void) hideBannerView:(ADBannerView*)banner
{
     if (!bannerVisible)
         return;
    
     [UIView beginAnimations:@"animateAdBannerHide" context:NULL];
    
    // Assumes the banner view is placed at the top of the screen.
  banner.frame = CGRectOffset(banner.frame, 0, -banner.frame.size.height);
    [UIView commitAnimations];
    
     // Update visibility state
    bannerVisible = NO;
}

- (void) showBannerView:(ADBannerView*)banner
{
     if (bannerVisible)
         return;
    
     [UIView beginAnimations:@"animateAdBannerShow" context:NULL];
    
    // Assumes the banner view is just across the top of the screen.
     banner.frame = CGRectOffset(banner.frame, 0, banner.frame.size.height);
     [UIView commitAnimations];
    
     // Update visibility state
     bannerVisible = YES;
}

#pragma mark -
#pragma mark iAd delegate methods


- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
     [self showBannerView:banner];
}

// This method will be invoked when an error has occurred attempting to get advertisement content.
// The ADError enum lists the possible error codes.
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
     // In any error case hide the banner
     [self hideBannerView:banner];
    
     NSLog(@"ADBannerView didFailToReceiveAdWithError: %d, %@, %@",
               [error code],
               [error domain],
              [error localizedDescription]);
}

@end
