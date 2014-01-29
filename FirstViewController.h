//
//  FirstViewController.h
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstCustomCell.h"
#import "SecondTabelViewController.h"
#import "GlobalClass.h"
@interface FirstViewController : UITableViewController
@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSArray * headings;


@property (nonatomic, retain) FirstCustomCell *cell;


@end
