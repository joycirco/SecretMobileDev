//
//  AccessorialPopOverViewController.m
//  QuickQuote
//
//  Created by Steven Tuckness on 2/25/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import "AccessorialPopOverViewController.h"

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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    // might want to store that code in a hidden variable here or something...
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

// closes it
- (IBAction)doneAction:(id)sender
{
    [self.delegate accessorialPopOverViewControllerDidFinish:self];
}

@end
