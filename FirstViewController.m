//
//  FirstViewController.m
//  JustSms
//
//  Created by ipapstudent on 16/04/13.
//  Copyright (c) 2013 ipap. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize data;
@synthesize headings;
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
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"water.png"]];
    
    self.cell.textLabel.textColor=[UIColor redColor];

    
    
    NSString *datafile=[[NSBundle mainBundle]pathForResource:@"Data" ofType:@"plist"];
    data=[[NSDictionary alloc]initWithContentsOfFile:datafile];
    self.headings =[data objectForKey:@"Headings"];
        self.navigationItem.title=@"Select category";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [headings count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    self.cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!self.cell) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"FirstCustomCell" owner:self options:nil];
        self.cell = [nib objectAtIndex:0];
       
    }
    
    // Configure the cell...
    self.cell.label.text=[headings objectAtIndex:indexPath.row];
    [self.cell.label setFont:[UIFont fontWithName:@"Zapfino" size:20]];
    [self.cell.label setTextColor:[UIColor whiteColor]];
    self.cell.image.image=[IMAGES objectAtIndex:indexPath.row];
    
    
       return self.cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 105;
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
    
     SecondTabelViewController *sView = [[SecondTabelViewController alloc] initWithNibName:@"SecondTabelViewController" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
    
    sView.selectedRow = indexPath.row;
    

     [self.navigationController pushViewController:sView animated:YES];
     [SecondTabelViewController release];
    
}

@end
