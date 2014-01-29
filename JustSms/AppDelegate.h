//
//  AppDelegate.h
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.



//   http://eminosoft.blogspot.in
//  chandra.pasumarthi@gmail.com

//  info@ipapacademy.com





#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>
//#import "FirstViewController.h"
#import "HomeViewController.h"
#import "GlobalClass.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    NSArray *LOADINGIMAGES;
    
}

@property (strong, nonatomic) UIWindow *window;
//@property (strong, nonatomic) FirstViewController *firstView;
@property (strong, nonatomic) UINavigationController *navigation;
@property (strong, nonatomic) HomeViewController *homeView;
@property (strong, nonatomic) UIImageView *splashView;
-(void) fadeSplashView;
@end
