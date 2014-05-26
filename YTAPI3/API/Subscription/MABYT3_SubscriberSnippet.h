//
//  MABYT3_SubscriberSnippet.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/subscriptions#subscriberSnippet
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_Thumbnail.h"

@interface MABYT3_SubscriberSnippet : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSMutableDictionary *thumbnails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
