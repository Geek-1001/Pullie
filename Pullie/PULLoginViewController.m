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
    
    self.passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(screenWidth/2 - 130, screenHeight/2 - 50, 260, 50)];
    [self.passwordTextField setPlaceholder:@"Input password..."];
    [self.passwordTextField setSecureTextEntry:YES];
    [self.passwordTextField setTextAlignment:NSTextAlignmentCenter];
    self.passwordTextField.delegate = self;
    [self.passwordTextField.layer setBorderWidth:1.5f];
    [self.passwordTextField.layer setBorderColor:[[UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1] CGColor] ];
    [self.passwordTextField.layer setCornerRadius:3.5f];
    [self.view addSubview: self.passwordTextField];
    
    UIButton *loginButton = [UIButton pullieLoginButton];
    [loginButton setFrame:CGRectMake(screenWidth/2 - 70, screenHeight - 100, 140, 45)];
    [loginButton setTitle:@"L O G I N" forState:UIControlStateNormal]; // learn more about localization!
    [loginButton addTarget:self action:@selector(loginButtonClickListener) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
}

#pragma mark - listeners

- (void)loginButtonClickListener {
    NSString *password = [self.passwordTextField text];
}

#pragma mark - keyboard delegate methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - memory management methods

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
