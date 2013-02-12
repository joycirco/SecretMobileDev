//
//  QuickQuoteMasterViewController.h
//  QuickQuote
//
//  Created by Steven Tuckness on 1/24/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DatePopoverViewController.h"

@class QuickQuoteDetailViewController;

@interface QuickQuoteMasterViewController : UITableViewController <DatePopoverViewControllerDelegate, UIPopoverControllerDelegate>

// Properties for accessing the popover and its viewcontroller
@property (strong, nonatomic) QuickQuoteDetailViewController *detailViewController;
@property (strong, nonatomic) UIPopoverController *datePopoverController;
@property (strong, nonatomic) UIStoryboardPopoverSegue *currentPopoverSegue;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *originPickupDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *destPickupDateLabel;

@end
