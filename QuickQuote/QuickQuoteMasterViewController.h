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

//@interface QuickQuoteMasterViewController : UITableViewController
@interface QuickQuoteMasterViewController : UITableViewController <DatePopoverViewControllerDelegate, UIPopoverControllerDelegate>

@property (strong, nonatomic) QuickQuoteDetailViewController *detailViewController;

@property (strong, nonatomic) UIPopoverController *datePopoverController;

@end
