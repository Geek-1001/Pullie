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
    
    CGFloat screenWidth = self.view.bounds.size.width;
    CGFloat screenHeight = self.view.bounds.size.height;
    
    CGFloat loginButtonWidth = 140.0;
    CGFloat loginButtonHeight = 45.0;
    CGFloat loginButtonCoordinateX = screenWidth/2 - loginButtonWidth/2;
    CGFloat loginButtonCoordinateY = screenHeight - 100;
    
    CGFloat textFieldWidth = 260.0;
    CGFloat textFieldHeight = 50.0;
    CGFloat textFieldCoordinateX = screenWidth/2 - textFieldWidth/2;
    
    CGFloat passwordTextFieldCoordinateY = screenHeight/2 - textFieldHeight;
    CGFloat loginTextFieldCoordinateY = screenHeight/2 - textFieldHeight * 2;
    
    self.passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(textFieldCoordinateX, passwordTextFieldCoordinateY, textFieldWidth, textFieldHeight)];
    [self.passwordTextField setPlaceholder: @"Input password..."];
    [self.passwordTextField setSecureTextEntry: YES];
    [self.passwordTextField setTextAlignment: NSTextAlignmentCenter];
    [self.passwordTextField setKeyboardType:UIKeyboardTypeDefault];
    self.passwordTextField.delegate = self;
    [self.view addSubview: self.passwordTextField];
    
    self.loginTextField = [[UITextField alloc] initWithFrame:CGRectMake(textFieldCoordinateX, loginTextFieldCoordinateY, textFieldWidth, textFieldHeight)];
    [self.loginTextField setPlaceholder: @"Input Login..."];
    [self.loginTextField setTextAlignment: NSTextAlignmentCenter];
    [self.loginTextField setKeyboardType:UIKeyboardTypeEmailAddress];
    self.loginTextField.delegate = self;
    [self.view addSubview: self.loginTextField];
    
    UIButton *loginButton = [UIButton pullieLoginButton];
    [loginButton setFrame:CGRectMake(loginButtonCoordinateX, loginButtonCoordinateY, loginButtonWidth, loginButtonHeight)];
    [loginButton setTitle:@"L O G I N" forState:UIControlStateNormal]; // TODO: learn more about localization!
    [loginButton addTarget:self action:@selector(signIn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
}

#pragma mark - Actions

- (void)signIn {
    NSString *password = [self.passwordTextField text];
    NSLog(password);
    // TODO: check if login and password are correct
}

#pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Memory Management Methods

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
