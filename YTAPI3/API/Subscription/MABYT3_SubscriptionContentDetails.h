//
//  MABYT3_SubscriptionContentDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/subscriptions#contentDetails
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"

@interface MABYT3_SubscriptionContentDetails : NSObject

@property (nonatomic) unsigned long totalItemCount;
@property (nonatomic) unsigned long newItemCount;
@property (nonatomic) YTActivityType activityType;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
