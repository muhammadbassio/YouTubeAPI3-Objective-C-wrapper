//
//  MABYT3_Subscription.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/subscriptions#properties
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Subscription.h"

@implementation MABYT3_Subscription

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#subscription";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_SubscriptionSnippet alloc] init];
        _contentDetails = [[MABYT3_SubscriptionContentDetails alloc] init];
        _subscriberSnippet = [[MABYT3_SubscriberSnippet alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#subscription";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_SubscriptionSnippet alloc] init];
        _contentDetails = [[MABYT3_SubscriptionContentDetails alloc] init];
        _subscriberSnippet = [[MABYT3_SubscriberSnippet alloc] init];
        
        if ([dict objectForKey:@"kind"]) {
            _kind = [dict objectForKey:@"kind"];
        }
        if ([dict objectForKey:@"etag"]) {
            _etag = [dict objectForKey:@"etag"];
        }
        if ([dict objectForKey:@"id"]) {
            _identifier = [dict objectForKey:@"id"];
        }
        if ([dict objectForKey:@"snippet"]) {
            _snippet = [[MABYT3_SubscriptionSnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
        if ([dict objectForKey:@"contentDetails"]) {
            _contentDetails = [[MABYT3_SubscriptionContentDetails alloc] initFromDictionary:[dict objectForKey:@"contentDetails"]];
        }
        if ([dict objectForKey:@"subscriberSnippet"]) {
            _subscriberSnippet = [[MABYT3_SubscriberSnippet alloc] initFromDictionary:[dict objectForKey:@"subscriberSnippet"]];
        }
    }
    return self;
}

@end
