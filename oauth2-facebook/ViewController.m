//
//  ViewController.m
//  oauth2-facebook
//
//  Created by MAC on 4/10/15.
//  Copyright (c) 2015 366. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit.h>
#import <FBSDKLoginKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.loginButton = [[FBSDKLoginButton alloc] init];
    [self.loginButton setCenter:self.view.center];
    [self.view addSubview:self.loginButton];
    
    self.loginButton.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    
    self.loginButton.delegate = self;
    
    if ([FBSDKAccessToken currentAccessToken]){
        // User is logged in
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error{
    // Handling the login results
}

@end
