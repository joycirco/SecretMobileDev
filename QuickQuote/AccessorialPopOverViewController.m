//
//  AccessorialPopOverViewController.m
//  QuickQuote
//
//  Created by Steven Tuckness on 2/25/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import "AccessorialPopOverViewController.h"
#import "AccessorialCell.h"

@interface AccessorialPopOverViewController ()

@end

@implementation AccessorialPopOverViewController

@synthesize titleLbl;
@synthesize tableData;
@synthesize accCodes;
@synthesize doneButton;
@synthesize isOrigBool;

@synthesize delegate;

/*
- (void)awakeFromNib
{
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 250.0);
    [super awakeFromNib];
}
*/

/*
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

#pragma mark - 

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Accessorial Names
    tableData = [NSArray arrayWithObjects:@"COD Fee", @"Construction Site", @"Convention/Tradeshow", @"Inside Delivery",
                 @"Inside Pickup", @"Excessive Length", @"Liftgate Delivery", @"Limited Access", @"Notify for PU or Delivery",
                 @"Protect from Freezing", @"Residential Delivery", @"Residential Pickup", @"Sort Segregate", @"Single Shipment", nil];
    
    //Accessorial Codes
    accCodes = [NSArray arrayWithObjects:@"COD", @"CONST", @"CONV", @"ISDEL", @"ISPU", @"LENGTH", @"LGDel", @"LIMACCESS", @"NOTIFY",
                @"PROTECTFRE", @"ResDel", @"ResPick", @"SORTSEG", @"SS", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    //self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.doneButton;
}

- (void)viewWillAppear:(BOOL)animated
{
    
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
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"accessorialCell";

    AccessorialCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil)
    {
        cell = [[AccessorialCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"accessorialCell"];
    }
    
    cell.label.text = [tableData objectAtIndex:indexPath.row];

    // when selected do this
    //cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    // when deselected do this...
    //cell.accessoryType = UITableViewCellAccessoryNone;
    
    // we need to store the Code or just pull the code from the array when the rate begins
    // set the rows that are/are not selected
    
    return cell;
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
    AccessorialCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    // do whatever
}

#pragma mark - Close it!
// closes it
- (IBAction)doneAction:(id)sender
{
    [self.delegate accessorialPopOverViewControllerDidFinish:self];
}

@end
