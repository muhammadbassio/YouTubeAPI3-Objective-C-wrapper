//
//  MABYT3_SubscriptionSnippet.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/subscriptions#snippet
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"
#import "MABYT3_ResourceId.h"
#import "MABYT3_Thumbnail.h"

@interface MABYT3_SubscriptionSnippet : NSObject

@property (strong, nonatomic) MAB_GDate *publishedAt;
@property (strong, nonatomic) NSString *channelTitle;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) MABYT3_ResourceId *resourceId;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSMutableDictionary *thumbnails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
