//
//  SecondCustomCell.m
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import "SecondCustomCell.h"

@implementation SecondCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
       
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_messageLabel release];
    [_image release];
    [super dealloc];
}
@end
