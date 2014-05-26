//
//  MABYT3_ChannelStatistics.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#statistics
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelStatistics.h"

@implementation MABYT3_ChannelStatistics

- (id) init {
    
    self = [super init];
    if (self) {
        _viewCount = 0;
        _commentCount = 0;
        _subscriberCount = 0;
        _videoCount = 0;
        _hiddenSubscriberCount = NO;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _viewCount = 0;
        _commentCount = 0;
        _subscriberCount = 0;
        _videoCount = 0;
        _hiddenSubscriberCount = NO;
        if ([dict objectForKey:@"viewCount"]) {
            _viewCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"viewCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"commentCount"]) {
            _commentCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"commentCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"subscriberCount"]) {
            _subscriberCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"subscriberCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"videoCount"]) {
            _videoCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"videoCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"hiddenSubscriberCount"]) {
            if ([[dict objectForKey:@"hiddenSubscriberCount"] integerValue] > 0) {
                _hiddenSubscriberCount = YES;
            }
        }
    }
    return self;
}

@end
