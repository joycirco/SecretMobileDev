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

//@synthesize tableView;

@synthesize originPostalCodeTextField;
@synthesize originPickupDateLabel;
@synthesize originStoreCodeTextField;
@synthesize destPostalCodeTextField;
@synthesize destPickupDateLabel;
@synthesize destStoreCodeTextField;

@synthesize datePopoverController;
@synthesize accessorialPopOverController;
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
    self.clearsSelectionOnViewWillAppear = YES;
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
    self.accessorialPopOverController = nil;
    
}

// this isn't being called
-(void)accessorialPopOverViewControllerDidFinish:(AccessorialPopOverViewController *)controller
{
     [[currentPopoverSegue popoverController] dismissPopoverAnimated: YES]; // dismiss the popover
}

// refactor this soon...like write some methods
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"origPickupDateSeague"] ||
         [[segue identifier] isEqualToString:@"destPickupDateSeague"])
    {
        [self handleDatePickerSeague:segue];
    }
    if ([[segue identifier] isEqualToString:@"origAccessorialSeague"] ||
        [[segue identifier] isEqualToString:@"destAccessorialSeague"])
    {
        [self handleAccessorialSegue:segue];
    }
    
} // end prepareForSegue

-(void)handleDatePickerSeague:(UIStoryboardSegue *)segue
{
    [[segue destinationViewController] setDelegate:self];
    
    if ([[segue identifier] isEqualToString:@"origPickupDateSeague"])
    {
        [[segue destinationViewController] setDateString:originPickupDateLabel.text];
        [[segue destinationViewController] setIsOriginBool:true];
    }
    else if([[segue identifier] isEqualToString:@"destPickupDateSeague"])
    {
        [[segue destinationViewController] setDateString:destPickupDateLabel.text];
        [[segue destinationViewController] setIsOriginBool:false];
    }
    
    currentPopoverSegue = (UIStoryboardPopoverSegue *)segue;
    UIPopoverController *popoverController = [segue destinationViewController];
    [popoverController setDelegate:self];
}

-(void)handleAccessorialSegue:(UIStoryboardSegue *)segue
{
    [[segue destinationViewController] setDelegate:self];
    currentPopoverSegue = (UIStoryboardPopoverSegue *)segue;
    UIPopoverController *popoverController = [segue destinationViewController];
    [popoverController setDelegate:self];
}

- (IBAction)togglePopover:(id)sender
{
    // 
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    
    // Make this better soon
    if ([[cell reuseIdentifier] isEqualToString:@"originPostalCodeCell"])
    {
        [originPostalCodeTextField becomeFirstResponder];
    }
    else if([[cell reuseIdentifier] isEqualToString:@"originStoreCodeCell"])
    {
        [originStoreCodeTextField becomeFirstResponder];
    }
    else if([[cell reuseIdentifier] isEqualToString:@"destPostalCodeCell"])
    {
        [destPostalCodeTextField becomeFirstResponder];
    }
    else if([[cell reuseIdentifier] isEqualToString:@"destStoreCodeCell"])
    {
        [destStoreCodeTextField becomeFirstResponder];
    }
}

// Close the keyboard if someone presses enter from any of THESE textfields
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == originPostalCodeTextField || textField == originStoreCodeTextField
        || textField == destPostalCodeTextField || textField == destStoreCodeTextField)
    {
        [textField resignFirstResponder];
    }
    return NO;
}

// limits these 4 textfields to 6 characters...
// need to double check max range on store code...
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField == originPostalCodeTextField || textField == originStoreCodeTextField
        || textField == destPostalCodeTextField || textField == destStoreCodeTextField)
    {
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    
    if(newLength > 6)
        return NO;
    }
    return YES;
}

// just do them all...change the text color to white in all text
// fields while editing...hmm this is some ugly shit. Hope this doesn't get brought up in
// a code review.
-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField
{
    NSIndexPath* selectedCellIndexPath;
    
    if (textField == originPostalCodeTextField)
        selectedCellIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    
    if (textField == originStoreCodeTextField)
        selectedCellIndexPath = [NSIndexPath indexPathForRow:3 inSection:0];
    
    if (textField == destPostalCodeTextField)
        selectedCellIndexPath = [NSIndexPath indexPathForRow:0 inSection:1];
    
    if (textField == destStoreCodeTextField)
        selectedCellIndexPath = [NSIndexPath indexPathForRow:3 inSection:1];

    // make sure the cell is selected...because without this...you can select a textfield without selecting the cell...
    [self.tableView selectRowAtIndexPath:selectedCellIndexPath animated:YES scrollPosition:UITableViewScrollPositionBottom];
    
    textField.textColor = [UIColor whiteColor];
    return YES;
}

// change all of the colors of the textfields when finished...
// Need to find a better solution though....
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    textField.textColor = [UIColor colorWithRed:81.0/255.0 green:102.0/255.0 blue:145.0/255.0 alpha:1.0];
    return YES;
}

@end
