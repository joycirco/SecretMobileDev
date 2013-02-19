//
//  LabelWithTextInputCell.m
//  QuickQuote
//
//  Created by Steven Tuckness on 2/12/13.
//  Copyright (c) 2013 EngagedTechnologies. All rights reserved.
//

#import "LabelWithTextInputCell.h"

@implementation LabelWithTextInputCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
