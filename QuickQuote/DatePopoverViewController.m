//
//  DatePopoverViewController.m
//  QuickQuote
//
//  Created by Darin Raffety on 2/8/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import "DatePopoverViewController.h"

@interface DatePopoverViewController ()

@end

@implementation DatePopoverViewController
@synthesize datePicker;
@synthesize dateString;
@synthesize doneButton;
@synthesize isOriginBool;

// getter/setter for header properties
@synthesize  delegate;


- (void)awakeFromNib
{
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 250.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MM/dd/yyyy"];
    NSDate *dateFromLabel = [dateFormat dateFromString:dateString];
   [self.datePicker setDate:dateFromLabel animated:TRUE];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM/dd/yyyy"];
    
    self.dateString = [formatter stringFromDate:self.datePicker.date];
    [self.delegate datePopoverViewControllerDidFinish:self];

}

@end
