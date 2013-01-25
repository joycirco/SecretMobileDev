//
//  QuickQuoteMasterViewController.h
//  QuickQuote
//
//  Created by Steven Tuckness on 1/24/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuickQuoteDetailViewController;

@interface QuickQuoteMasterViewController : UITableViewController

@property (strong, nonatomic) QuickQuoteDetailViewController *detailViewController;

@end
