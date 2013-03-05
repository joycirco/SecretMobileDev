//
//  AccessorialPopOverViewController.h
//  QuickQuote
//
//  Created by Steven Tuckness on 2/25/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccessorialPopOverViewController;

@protocol AccessorialPopOverViewControllerDelegate
@required
-(void)accessorialPopOverViewControllerDidFinish:(AccessorialPopOverViewController *)controller;
@end

@interface AccessorialPopOverViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id <AccessorialPopOverViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIView *titleLbl;
@property(nonatomic, retain)NSArray *tableData;
@property(nonatomic, retain)NSArray *accCodes;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (nonatomic, assign) BOOL isOrigBool; // determine source

// Interface Builder actions are used for custom click events
- (IBAction)doneAction:(id)sender;

@end
