//
//  MAB_GoogleOAuthTouchViewController.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MAB_GoogleOAuthTouchViewController.h"

@interface MAB_GoogleOAuthTouchViewController ()

@end

@implementation MAB_GoogleOAuthTouchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    navy = 0;
    if (SYSTEM_VERSION_LESS_THAN(@"7.0")) {
        navy = -20;
    }
    
    // Init NavigationBar
    {
        UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"Google Sign In"];
        //cancelBtn = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelPressed)];
        
        cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [cancelBtn setFrame:CGRectMake(0, 20, 60, 44)];
        [cancelBtn addTarget:self action:@selector(cancelPressed) forControlEvents:UIControlEventTouchUpInside];
        [cancelBtn setTitle:@"Cancel" forState:UIControlStateNormal];
        UIBarButtonItem *cb = [[UIBarButtonItem alloc] initWithCustomView:cancelBtn];
        
        navBar = [[UINavigationBar alloc] init];
        navBar.frame = CGRectMake(0, navy, self.view.bounds.size.width, 64);
        navBar.items = [NSArray arrayWithObject:item];
        navBar.topItem.leftBarButtonItem = cb;
        
        
    }
    
    // Init UIWebView
    {
        webview = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64 + navy, self.view.bounds.size.width, self.view.bounds.size.height - (64 + navy))];
        webview.backgroundColor = [UIColor grayColor];
        webview.delegate = self;
        
        loading = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
        loading.color = [UIColor blackColor];
    }
    
    [self.view addSubview:webview];
    [self.view addSubview:navBar];
    [self.view addSubview:loading];
    
    [self updateTheme];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
    
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[[NSString stringWithFormat:@"https://accounts.google.com/o/oauth2/auth?client_id=%@&redirect_uri=http://localhost/oauth2callback&scope=%@&response_type=code&access_type=offline", _clientID, _scope] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]]];
    //[loading startAnimating];
}


- (void) viewWillLayoutSubviews {
    
    navBar.frame = CGRectMake(0, navy, self.view.bounds.size.width, 64);
    webview.frame = CGRectMake(0, 64 + navy, self.view.bounds.size.width, self.view.bounds.size.height - (64 + navy));
    loading.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    
}



- (void) cancelPressed {
    
    __weak MAB_GoogleOAuthTouchViewController *selfie = self;
    [selfie.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void) getAccessToken {
    
    NSString *postbody = [NSString stringWithFormat:@"code=%@&client_id=%@&client_secret=%@&redirect_uri=http://localhost/oauth2callback&grant_type=authorization_code", stoken, _clientID, _clientSecret];
    
    NSData *postData = [postbody dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://accounts.google.com/o/oauth2/token"]]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (!error) {
            
            NSHTTPURLResponse *httpresp = (NSHTTPURLResponse *)response;
            if (httpresp.statusCode == 200) {
                
                NSError *e = nil;
                NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&e];
                
                MAB_GoogleUserCredentials *creds = [MAB_GoogleUserCredentials sharedInstance];
                [creds SignOut];
                creds.token = [[MAB_GoogleAccessToken alloc] initFromDictionary:dict];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    [creds saveToken];
                    [self cancelPressed];
                });
                
            }
            
            
            
        }
        else {
            NSLog(@"Get Token Error: %@", error.description);
        }
        
    }];
    
}


- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    if ([request.URL.absoluteString rangeOfString:@"http://localhost/oauth2callback?code="].location != NSNotFound) {
        if (!isVerified) {
            isVerified = YES;
            // proccess authentication
            stoken = [[request.URL.absoluteString componentsSeparatedByString:@"code="] objectAtIndex:1];
            [self getAccessToken];
        }
        return NO;
    }
    return YES;
}

- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    [loading stopAnimating];
    if ([error.description rangeOfString:@"http://localhost/oauth2callback?code="].location != NSNotFound) {
        
    }
    else {
        NSLog(@"webView didFailError: %@", error.description);
    }
    
}

- (void) webViewDidFinishLoad:(UIWebView *)webView {
    
    [loading stopAnimating];
}

- (void) webViewDidStartLoad:(UIWebView *)webView {
    
    [loading startAnimating];
}




- (void) updateTheme {
    
    // Customize navigation bar Appearence
    
    UIColor *barColor = UIColorFromRGBA(0xFFFFFF, 1);
    UIColor *barTintColor = UIColorFromRGBA(0x007AFF, 1);
    
    if (SYSTEM_VERSION_LESS_THAN(@"7.0")) {
        navBar.tintColor = barColor;
        navBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys: barTintColor, UITextAttributeTextColor, [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0], UITextAttributeTextShadowColor, [UIFont fontWithName:@"HelveticaNeue" size:18], UITextAttributeFont, nil];
    }
    else {
        navBar.barTintColor = barColor;
        navBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:barTintColor, NSForegroundColorAttributeName, [UIFont fontWithName:@"HelveticaNeue" size:18], NSFontAttributeName, nil];
    }
    
    
    [cancelBtn setTitleColor:barTintColor forState:UIControlStateNormal];
    [cancelBtn setTitleColor:[barTintColor colorWithAlphaComponent:0.6] forState:UIControlStateHighlighted];
    cancelBtn.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:17];
    
}




@end
