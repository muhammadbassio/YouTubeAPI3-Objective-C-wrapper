//
//  MAB_GoogleUserCredentials.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GoogleAccessToken.h"
#import "MABYT3_Channel.h"
#import "MABYT3_Subscription.h"

@protocol MAB_GoogleUserCredentialsDelegate <NSObject>

- (void) CredUserNoChannel;
- (void) CredUserUpdated;
- (void) CredUserPrepare;
- (void) CredUserSubsComplete;

@optional
- (void) ChooseChannel:(NSMutableArray *)channels;

@end


@interface MAB_GoogleUserCredentials : NSObject
{
    BOOL userFetched;
    NSString *nxtSubURL;
}

@property (nonatomic) BOOL signedin;
@property (strong, nonatomic) MAB_GoogleAccessToken *token;
@property (strong, nonatomic) MABYT3_Channel *user;
@property (strong, nonatomic) NSMutableArray *ytSubs;
@property (weak, nonatomic) id<MAB_GoogleUserCredentialsDelegate> delegate;


+ (MAB_GoogleUserCredentials *) sharedInstance;
- (void) saveToken;
- (void) initUser;
- (void) SignOut;

@end
