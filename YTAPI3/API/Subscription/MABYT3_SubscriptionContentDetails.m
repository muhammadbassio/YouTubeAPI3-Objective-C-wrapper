//
//  MABYT3_SubscriptionContentDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/subscriptions#contentDetails
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_SubscriptionContentDetails.h"

@implementation MABYT3_SubscriptionContentDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _totalItemCount = 0;
        _newItemCount = 0;
        _activityType = kYTActivityTypeAll;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _totalItemCount = 0;
        _newItemCount = 0;
        _activityType = kYTActivityTypeAll;
        
        if ([dict objectForKey:@"totalItemCount"]) {
            _totalItemCount = [[dict objectForKey:@"totalItemCount"] unsignedLongValue];
        }
        if ([dict objectForKey:@"newItemCount"]) {
            _newItemCount = [[dict objectForKey:@"newItemCount"] unsignedLongValue];
        }
        if ([dict objectForKey:@"activityType"]) {
            if ([[dict objectForKey:@"activityType"] isEqualToString:@"uploads"]) {
                _activityType = kYTActivityTypeUploads;
            }
        }
        
    }
    return self;
}

@end
