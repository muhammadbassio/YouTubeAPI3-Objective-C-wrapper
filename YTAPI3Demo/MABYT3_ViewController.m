//
//  MABYT3_ViewController.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ViewController.h"

@interface MABYT3_ViewController ()

@end



@implementation MABYT3_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    si = [[UIButton alloc] initWithFrame:CGRectMake(20, 60, 100, 50)];
    si.backgroundColor = [UIColor redColor];
    [si setTitle:@"signIn" forState:UIControlStateNormal];
    [si addTarget:self action:@selector(signIn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:si];
    
    so = [[UIButton alloc] initWithFrame:CGRectMake(20, 60, 100, 50)];
    so.backgroundColor = [UIColor redColor];
    [so setTitle:@"signOut" forState:UIControlStateNormal];
    [so addTarget:self action:@selector(signOut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:so];
    
    [MAB_GoogleUserCredentials sharedInstance].delegate = self;
    
    if ([MAB_GoogleUserCredentials sharedInstance].signedin) {
        si.hidden = YES;
        so.hidden = NO;
    }
    else {
        si.hidden = NO;
        so.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) signIn {
    
    MAB_GoogleOAuthTouchViewController *signInVC = [[MAB_GoogleOAuthTouchViewController alloc] init];
    signInVC.scope = scope;
    signInVC.clientID = kMyClientID;
    signInVC.clientSecret = kMyClientSecret;
    [self presentViewController:signInVC animated:YES completion:^{
        
    }];
    
}

- (void) signOut {
    
    [[MAB_GoogleUserCredentials sharedInstance] SignOut];
    si.hidden = NO;
    so.hidden = YES;
}


- (void) CredUserNoChannel {
    NSLog(@"No Channel !");
}

- (void) CredUserUpdated {
    NSLog(@"User data loaded :)");
    si.hidden = YES;
    so.hidden = NO;
}

- (void) CredUserPrepare {
    NSLog(@"fetching user data ...");
}

- (void) CredUserSubsComplete {
    
    [[MABYT3_APIRequest sharedInstance] LISTActivitiesForURL:[[MABYT3_APIRequest sharedInstance] ActivitiesURLforHomeWithMaxResults:50] andHandler:^(NSMutableArray *results, NSError *error, NSString *nxt) {
        
        if (!error) {
            NSLog(@"%@", [@(results.count) stringValue]);
        }
        else {
            NSLog(@"%@", error.description);
        }
    }];
    
}



@end
