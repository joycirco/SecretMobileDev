//
//  QuickQuoteMasterViewController.m
//  QuickQuote
//
//  Created by Steven Tuckness on 1/24/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import "QuickQuoteMasterViewController.h"

#import "QuickQuoteDetailViewController.h"

@interface QuickQuoteMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation QuickQuoteMasterViewController

@synthesize tableView;
@synthesize originPickupDateLabel;
@synthesize destPickupDateLabel;
@synthesize datePopoverController;
@synthesize currentPopoverSegue;

- (void)awakeFromNib
{
    self.clearsSelectionOnViewWillAppear = NO;
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailViewController = (QuickQuoteDetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Flipside View Controller


- (void)datePopoverViewControllerDidFinish:(DatePopoverViewController *)controller
{
    if (controller.isOriginBool)
    {
        originPickupDateLabel.text = controller.dateString;
    }
    else
    {
        destPickupDateLabel.text = controller.dateString;
    }
    
    [[currentPopoverSegue popoverController] dismissPopoverAnimated: YES]; // dismiss the popover
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    self.datePopoverController = nil;
}

// refactor this soon...
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [[segue destinationViewController] setDelegate:self];
    
    if ([[segue identifier] isEqualToString:@"OrigPickupDateSeague"])
    {
        [[segue destinationViewController] setDateString:originPickupDateLabel.text];
        [[segue destinationViewController] setIsOriginBool:true];
       
    }
    else if([[segue identifier] isEqualToString:@"destPickupDateSeague"])
    {
        [[segue destinationViewController] setDateString:destPickupDateLabel.text];
        [[segue destinationViewController] setIsOriginBool:false];
        NSLog(@" DATE %@", destPickupDateLabel.text);
    }
    
    currentPopoverSegue = (UIStoryboardPopoverSegue *)segue;
    UIPopoverController *popoverController = [segue destinationViewController];    
    [popoverController setDelegate:self];
}

- (IBAction)togglePopover:(id)sender
{
    // 
}


/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDate *object = _objects[indexPath.row];
    self.detailViewController.detailItem = object;
}*/

@end
