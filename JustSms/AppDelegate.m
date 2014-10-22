//
//  AppDelegate.m
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//sureh naidu

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize homeView,splashView;

- (void)dealloc
{
    [homeView release];
    //[firstView release];
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    

    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.homeView=[[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    
    self.navigation=[[UINavigationController alloc]initWithRootViewController:homeView];
    
    self.window.rootViewController=self.navigation;
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    //[NSThread sleepForTimeInterval:2.0];

    [self.window makeKeyAndVisible];
    [self fadeSplashView];
    return YES;
    
 

}


-(void)fadeSplashView{
    
    splashView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    splashView.animationImages = LOADING_IMAGES;
    splashView.animationDuration = 1;
    splashView.animationRepeatCount = -1;
    [splashView startAnimating];
    
    [self.window addSubview:splashView];
    [self.window bringSubviewToFront:splashView];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:0.5];
    [UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self.window cache:YES];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(removeSubView)];
    splashView.alpha = 0.0;
    [UIView commitAnimations];

}

-(void)removeSubView{
    [splashView removeFromSuperview];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
