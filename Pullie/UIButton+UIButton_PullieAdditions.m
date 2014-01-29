//
//  UIButton+UIButton_PullieAdditions.m
//  Pullie
//
//  Created by Ahmed Sulaiman on 29.01.14.
//  Copyright (c) 2014 Ahmed Sulaiman. All rights reserved.
//

#import "UIButton+UIButton_PullieAdditions.h"

@implementation UIButton (UIButton_PullieAdditions)

+ (UIButton *)standardLoginButton {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    UIButton *loginButton = [[[UIButton alloc] initWithFrame:CGRectMake(screenWidth/2 - 50, 200, 100, 50)] autorelease];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton setBackgroundColor:[UIColor colorWithRed:255 green:229 blue:180 alpha:1]];
    return loginButton;
}

@end
