//
//  PULLoginViewController.m
//  Pullie
//
//  Created by Ahmed Sulaiman on 29.01.14.
//  Copyright (c) 2014 Ahmed Sulaiman. All rights reserved.
//

#import "PULLoginViewController.h"
#import "UIButton+PullieAdditions.h"


@interface PULLoginViewController ()

@end

@implementation PULLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:255/255.0 green:153/255.0 blue:102/255.0 alpha:1]; // temp value of background color!
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIButton *loginButton = [UIButton pullieLoginButton];
    [loginButton setFrame:CGRectMake(screenWidth/2 - 70, screenHeight - 100, 140, 45)];
    [loginButton setTitle:@"L O G I N" forState:UIControlStateNormal]; // learn more about localization!
    
    [self.view addSubview:loginButton];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
