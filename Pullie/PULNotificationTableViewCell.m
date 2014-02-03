//
//  PULNotificationTableViewCell.m
//  Pullie
//
//  Created by Ahmed Sulaiman on 03.02.14.
//  Copyright (c) 2014 Ahmed Sulaiman. All rights reserved.
//

#import "PULNotificationTableViewCell.h"

@implementation PULNotificationTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withUser:(NSString *)user withAction:(NSString *)action withCurrentRepository:(NSString *)repository withContent:(NSString *)content andDate:(NSString *)date {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSString *mainText = [NSString stringWithFormat:@"%@ : %@ - %@", user, action, repository];
        NSString *detailsText = [NSString stringWithFormat:@"at %@: \n %@", date, content];
        CGFloat fontSize = 15.5f;
        
        [self.textLabel setText:mainText];
        [self.detailTextLabel setText:detailsText];
        [self.textLabel setFont:[UIFont fontWithName:@"Alef-Regular" size:fontSize]];
        
        /*
         //TODO: add line break mode for long notifications
         NSInteger numberOfLine = 0;
         [self.textLabel setLineBreakMode:NSLineBreakByWordWrapping];
         [self.textLabel setNumberOfLines:numberOfLine];
        */
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setNotificationUser:(NSString *)user withAction:(NSString *)action withCurrentRepository:(NSString *)repository withContent:(NSString *)content andDate:(NSString *)date {
    self.user = user;
    self.action = action;
    self.currentRepository = repository;
    self.content = content;
    self.date = date;
}

@end
