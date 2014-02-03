//
//  PULNotificationTableViewCell.h
//  Pullie
//
//  Created by Ahmed Sulaiman on 03.02.14.
//  Copyright (c) 2014 Ahmed Sulaiman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PULNotificationTableViewCell : UITableViewCell

@property (nonatomic, weak) NSString *user;
@property (nonatomic, weak) NSString *action;
@property (nonatomic, weak) NSString *currentRepository;
@property (nonatomic, weak) NSString *content;
@property (nonatomic, weak) NSString *date;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withUser:(NSString *)user withAction:(NSString *)action withCurrentRepository:(NSString *)repository withContent:(NSString *)content andDate:(NSString *)date;

@end
