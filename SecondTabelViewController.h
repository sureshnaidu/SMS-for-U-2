//
//  SecondTabelViewController.h
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MailViewController.h"
#import "SecondCustomCell.h"

@interface SecondTabelViewController : UITableViewController
@property (strong, nonatomic) NSDictionary *data;
@property (strong, nonatomic) NSDictionary *message;



@property (nonatomic, strong) NSArray *friendship;
@property (nonatomic, strong) NSArray *love;
@property (nonatomic, strong) NSArray *jokes;
@property (nonatomic, strong) NSArray *happyBirthday;
@property (nonatomic, strong) NSArray *anniversary;
@property (nonatomic, strong) NSArray *kiss;
@property (nonatomic, strong) NSArray *specialdays;
@property (nonatomic, strong) NSArray *flirt;
@property (nonatomic, strong) NSArray *puzzle;
@property (nonatomic, strong) NSArray *sorry;
@property (nonatomic, strong) NSArray *angry;
@property (nonatomic, strong) NSArray *goodmorning;
@property (nonatomic, strong) NSArray *goodnight;
@property (nonatomic, strong) NSArray *quotes;
@property (nonatomic, strong) NSArray *hearttouch;



@property (nonatomic, strong) NSMutableArray *mainArray;
@property (nonatomic, readwrite) int selectedRow;
@property (nonatomic, retain) SecondCustomCell *cell;
@property (nonatomic, retain) NSString *sms;
@end
