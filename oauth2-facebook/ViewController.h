//
//  ViewController.h
//  oauth2-facebook
//
//  Created by MAC on 4/10/15.
//  Copyright (c) 2015 366. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit.h>

@interface ViewController : UIViewController<FBSDKLoginButtonDelegate>

@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

@end

