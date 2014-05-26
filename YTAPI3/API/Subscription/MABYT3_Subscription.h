//
//  MABYT3_Subscription.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/subscriptions#properties
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_SubscriptionSnippet.h"
#import "MABYT3_SubscriptionContentDetails.h"
#import "MABYT3_SubscriberSnippet.h"

@interface MABYT3_Subscription : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) MABYT3_SubscriptionSnippet *snippet;
@property (strong, nonatomic) MABYT3_SubscriptionContentDetails *contentDetails;
@property (strong, nonatomic) MABYT3_SubscriberSnippet *subscriberSnippet;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
