//
//  HomeViewController.h
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "AboutUsViewController.h"
#import "AboutAppViewController.h"
#import <iAd/iAd.h>
@interface HomeViewController : UIViewController <ADBannerViewDelegate>{
    BOOL bannerVisible;
}
@property (strong, nonatomic) FirstViewController *firstView;
@property (strong, nonatomic) AboutUsViewController *aboutUs;
@property (retain, nonatomic) IBOutlet ADBannerView *adView;
@property (strong, nonatomic) AboutAppViewController *aboutApp;
- (IBAction)start:(id)sender;
- (IBAction)aboutus:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *button;
@property (retain, nonatomic) IBOutlet UIButton *aboutapp;
@property (retain, nonatomic) IBOutlet UIImageView *image;
- (IBAction)aboutapp:(id)sender;


@property (nonatomic, retain) NSTimer *time;

@end
