//
//  MABYT3_ChannelStatistics.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#statistics
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ChannelStatistics : NSObject

@property (nonatomic) unsigned long viewCount;
@property (nonatomic) unsigned long commentCount;
@property (nonatomic) unsigned long subscriberCount;
@property (nonatomic) BOOL hiddenSubscriberCount;
@property (nonatomic) unsigned long videoCount;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
