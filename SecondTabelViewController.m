//
//  SecondTabelViewController.m
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import "SecondTabelViewController.h"
#import "MailViewController.h"
@interface SecondTabelViewController ()

@end

@implementation SecondTabelViewController
@synthesize data,friendship,love,happyBirthday,anniversary,kiss,jokes,message,mainArray,selectedRow,sms,sorry,flirt,puzzle,angry,quotes,hearttouch,goodmorning,goodnight;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    NSString *datafile=[[NSBundle mainBundle]pathForResource:@"Data" ofType:@"plist"];
    self.data=[[[NSDictionary alloc]initWithContentsOfFile:datafile] autorelease];
   
    self.message=[self.data objectForKey:@"Message"];
    
    
    
    self.friendship=[self.message objectForKey:@"Friendship"];
    self.love=[self.message objectForKey:@"Love"];
    self.happyBirthday=[self.message objectForKey:@"Happy Birthday"];
    self.anniversary=[self.message objectForKey:@"Anniversary"];
    self.kiss=[self.message objectForKey:@"Kiss"];
    self.jokes=[self.message objectForKey:@"Jokes"];
    self.sorry=[self.message objectForKey:@"Sorry"];
    self.flirt=[self.message objectForKey:@"Flirt"];
    self.puzzle=[self.message objectForKey:@"Puzzle"];
    self.angry=[self.message objectForKey:@"Angry"];
    self.quotes=[self.message objectForKey:@"Quotes"];
    self.hearttouch=[self.message objectForKey:@"Hearttouch"];
    self.goodmorning=[self.message objectForKey:@"Goodmorning"];
    self.specialdays=[self.message objectForKey:@"Special Days"];
    self.goodnight=[self.message objectForKey:@"Goodnight"];
    
   
    
    
    
 self.mainArray=[NSArray arrayWithObjects:self.friendship,self.love,self.jokes,self.happyBirthday,self.hearttouch,self.anniversary, self.kiss,self.puzzle,self.quotes,self.specialdays,self.flirt,self.sorry,self.angry,self.goodmorning,self.goodnight,nil];


}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
   
    return [[self.mainArray objectAtIndex:selectedRow] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    self.cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (self.cell==nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SecondCustomCell" owner:self options:nil];

        self.cell = [nib objectAtIndex:0];

        }
    
    static int i=0;
    if (i % 2 ==0 ) {
        
     [self.cell.messageLabel setTextColor:[UIColor brownColor]];
        [self.cell.messageLabel setFont:[UIFont fontWithName:@"AvenirNextCondensed" size:18]];
    self.cell.image.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"back.png"]];
    }
    else
    {
        
        
          [self.cell.messageLabel setTextColor:[UIColor whiteColor]];
        [self.cell.messageLabel setFont:[UIFont fontWithName:@"Hei" size:14]];
        self.cell.image.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"water2.png"]];
    }
    i++;
  
    
    
    self.cell.messageLabel.text=[[mainArray objectAtIndex:selectedRow]objectAtIndex:indexPath.row];
   
       return self.cell;
}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
   
   MailViewController   *mailView = [[MailViewController alloc] initWithNibName:@"MailViewController" bundle:nil];
     
    mailView.mainMessage=((SecondCustomCell *)[tableView cellForRowAtIndexPath:indexPath]).messageLabel.text;
   
 
     [self.navigationController pushViewController:mailView animated:YES];

     [mailView release];
     }


@end
