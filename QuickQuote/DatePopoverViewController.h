//
//  DatePopoverViewController.h
//  QuickQuote
//
//  Created by Darin Raffety on 2/8/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DatePopoverViewController;

@protocol DatePopoverViewControllerDelegate
- (void)datePopoverViewControllerDidFinish:(DatePopoverViewController *)controller;
@end

@interface DatePopoverViewController : UIViewController

@property (weak, nonatomic) id <DatePopoverViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (strong, nonatomic) NSString* dateString;

- (IBAction)doneAction:(id)sender;

@end
