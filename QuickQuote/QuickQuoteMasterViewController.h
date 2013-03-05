//
//  QuickQuoteMasterViewController.h
//  QuickQuote
//
//  Created by Steven Tuckness on 1/24/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DatePopoverViewController.h"
#import "AccessorialPopOverViewController.h"

@class QuickQuoteDetailViewController;

@interface QuickQuoteMasterViewController : UITableViewController <DatePopoverViewControllerDelegate, AccessorialPopOverViewControllerDelegate, UIPopoverControllerDelegate>

// Properties for accessing the popover and its viewcontroller
@property (strong, nonatomic) QuickQuoteDetailViewController *detailViewController;
@property (strong, nonatomic) UIPopoverController *datePopoverController;
@property (strong, nonatomic) UIPopoverController *accessorialPopOverController;
@property (strong, nonatomic) UIStoryboardPopoverSegue *currentPopoverSegue;

@property (weak, nonatomic) IBOutlet UITextField *originPostalCodeTextField;
@property (weak, nonatomic) IBOutlet UILabel *originPickupDateLabel;
@property (weak, nonatomic) IBOutlet UITextField *originStoreCodeTextField;
@property (weak, nonatomic) IBOutlet UILabel *destPickupDateLabel;
@property (weak, nonatomic) IBOutlet UITextField *destPostalCodeTextField;
@property (weak, nonatomic) IBOutlet UITextField *destStoreCodeTextField;

@end
