//
//  UIButton+PullieAdditions.m
//  Pullie
//
//  Created by Ahmed Sulaiman on 29.01.14.
//  Copyright (c) 2014 Ahmed Sulaiman. All rights reserved.
//

#import "UIButton+PullieAdditions.h"

@implementation UIButton (PullieAdditions)

// http://stackoverflow.com/questions/7464446/whats-wrong-with-uicolor-clr-uicolor-colorwithred1-0-green1-0-blue1-0-al [UIColor colorWithRed...] ISSUE!
+ (UIButton *)pullieLoginButton {
    UIButton *loginButton = [[[self alloc] initWithFrame:CGRectZero] autorelease];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont fontWithName:@"Alef-Bold" size:15.5f];
    [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [loginButton.layer setBorderWidth:1.5];
    [loginButton.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    [loginButton.layer setCornerRadius:3.5];
    return loginButton;
}

@end
