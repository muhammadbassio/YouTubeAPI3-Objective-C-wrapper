//
//  MAB_GoogleUserCredentials.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MAB_GoogleUserCredentials.h"

@implementation MAB_GoogleUserCredentials

static MAB_GoogleUserCredentials *sharedCred = nil;

- (id) init {
    
    self = [super init];
    if (self) {
        
        _token = [[MAB_GoogleAccessToken alloc] init];
        _user = [[MABYT3_Channel alloc] init];
        _ytSubs = [[NSMutableArray alloc] init];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults objectForKey:@"GTM_token"]) {
            _token = [NSKeyedUnarchiver unarchiveObjectWithData:[defaults objectForKey:@"GTM_token"]];
            _signedin = YES;
            [_delegate CredUserPrepare];
            NSTimeInterval diff = [[NSDate date] timeIntervalSinceDate:_token.tokenTime];
            if (diff < _token.expiresIn) {
                [self initUser];
            }
            else {
                [self refreshToken];
            }
        }
        
    }
    
    return self;
}

- (void) saveToken {
    
    NSData *encodedToken = [NSKeyedArchiver archivedDataWithRootObject:_token];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedToken forKey:@"GTM_token"];
    [defaults synchronize];
    _signedin = YES;
    [_delegate CredUserPrepare];
    [self initUser];
}

- (void) initUser {
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/channels?part=id,snippet,auditDetails,brandingSettings,contentDetails,invideoPromotion,statistics,status,topicDetails&mine=true&key=%@", apiKey]]];
    [request setHTTPMethod:@"GET"];
    [request setValue:[NSString stringWithFormat:@"Bearer %@", _token.accessToken] forHTTPHeaderField:@"Authorization"];
    
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        NSHTTPURLResponse *httpresp = (NSHTTPURLResponse *)response;
        if (httpresp.statusCode == 0) {
            // No linked YouTube account
            [self SignOut];
            dispatch_async(dispatch_get_main_queue(), ^{
                [_delegate CredUserNoChannel];
            });
        }
        else {
            
            NSError *e = nil;
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&e];
            if ([dict objectForKey:@"items"]) {
                NSArray *items = [dict objectForKey:@"items"];
                if (items.count > 0) {
                    _user = [[MABYT3_Channel alloc] initFromDictionary:items[0]];
                    userFetched = YES;
                    [self getUserSubs];
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [_delegate CredUserUpdated];
                    });
                }
            }
            else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [_delegate CredUserNoChannel];
                });
            }
        }
        
        
    }];
    
}


- (void) getUserSubs {
    
    _ytSubs = [[NSMutableArray alloc] init];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/subscriptions?part=id,snippet,contentDetails&maxResults=50&mine=true&key=%@", apiKey]]];
    [request setHTTPMethod:@"GET"];
    [request setValue:[NSString stringWithFormat:@"Bearer %@", _token.accessToken] forHTTPHeaderField:@"Authorization"];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        NSHTTPURLResponse *httpresp = (NSHTTPURLResponse *)response;
        if (httpresp.statusCode == 200) {
            NSError *e = nil;
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&e];
            if ([dict objectForKey:@"items"]) {
                NSArray *items = [dict objectForKey:@"items"];
                if (items.count > 0) {
                    for (int i = 0; i < items.count; i++) {
                        MABYT3_Subscription *sub = [[MABYT3_Subscription alloc] initFromDictionary:items[i]];
                        [_ytSubs addObject:sub];
                    }
                }
            }
            if ([dict objectForKey:@"nextPageToken"]) {
                NSString *pagetoken = [dict objectForKey:@"nextPageToken"];
                nxtSubURL = [NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/subscriptions?part=id,snippet,contentDetails&maxResults=50&mine=true&pageToken=%@&key=%@", pagetoken, apiKey];
                [self resumeSub];
            }
            else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [_delegate CredUserSubsComplete];
                });
            }
        }
    }];
}

- (void) resumeSub {
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:nxtSubURL]];
    [request setHTTPMethod:@"GET"];
    [request setValue:[NSString stringWithFormat:@"Bearer %@", _token.accessToken] forHTTPHeaderField:@"Authorization"];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        NSHTTPURLResponse *httpresp = (NSHTTPURLResponse *)response;
        if (httpresp.statusCode == 200) {
            NSError *e = nil;
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&e];
            if ([dict objectForKey:@"items"]) {
                NSArray *items = [dict objectForKey:@"items"];
                if (items.count > 0) {
                    for (int i = 0; i < items.count; i++) {
                        MABYT3_Subscription *sub = [[MABYT3_Subscription alloc] initFromDictionary:items[i]];
                        [_ytSubs addObject:sub];
                    }
                }
            }
            if ([dict objectForKey:@"nextPageToken"]) {
                NSString *pagetoken = [dict objectForKey:@"nextPageToken"];
                nxtSubURL = [NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/subscriptions?part=id,snippet,contentDetails&maxResults=50&mine=true&pageToken=%@&key=%@", pagetoken, apiKey];
                [self resumeSub];
            }
            else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [_delegate CredUserSubsComplete];
                });
            }
        }
    }];
}


- (void) refreshToken {
    
    NSString *postbody = [NSString stringWithFormat:@"client_id=%@&client_secret=%@&refresh_token=%@&grant_type=refresh_token", kMyClientID, kMyClientSecret, _token.refreshToken];
    
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
                [_token refreshToken:dict];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                });
                
                if (!userFetched) {
                    [self initUser];
                }
            }
        }
        else {
            NSLog(@"RefreshToken Error: %@", error.description);
            [self refreshToken];
        }
    }];
}


- (void) SignOut {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:nil forKey:@"GTM_token"];
    [defaults synchronize];
    _signedin = NO;
    _token = [[MAB_GoogleAccessToken alloc] init];
    _user = [[MABYT3_Channel alloc] init];
    _ytSubs = [[NSMutableArray alloc] init];
    
}

+ (MAB_GoogleUserCredentials *) sharedInstance {
    
    if (!sharedCred) {
        sharedCred = [[MAB_GoogleUserCredentials alloc] init];
    }
    return sharedCred;
}

@end
