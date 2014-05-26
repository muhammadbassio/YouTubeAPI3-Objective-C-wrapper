//
//  MAB_GoogleOAuthTouchViewController.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MAB_GoogleAccessToken.h"
#import "MAB_GoogleUserCredentials.h"

@interface MAB_GoogleOAuthTouchViewController : UIViewController <UIWebViewDelegate>
{
    UIWebView *webview;
    UINavigationBar *navBar;
    UIButton *cancelBtn;
    UIActivityIndicatorView *loading;
    
    BOOL isVerified;
    NSString *urlstring;
    NSInteger navy;
    NSString *stoken;
    
}

@property (weak, nonatomic) NSString *clientID;
@property (weak, nonatomic) NSString *clientSecret;
@property (weak, nonatomic) NSString *scope;
//@property (strong, nonatomic) MAB_GoogleAccessToken *token;

@end
