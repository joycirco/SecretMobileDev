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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(id)sender
{
    [self.delegate datePopoverViewControllerDidFinish:self];
}

@end
