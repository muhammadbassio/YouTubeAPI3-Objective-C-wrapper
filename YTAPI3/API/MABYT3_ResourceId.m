//
//  MABYT3_SubscriptionResourceId.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ResourceId.h"

@implementation MABYT3_ResourceId

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"";
        _channelId = @"";
        _videoId = @"";
        _playlistId = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"";
        _channelId = @"";
        _videoId = @"";
        _playlistId = @"";
        
        if ([dict objectForKey:@"kind"]) {
            _kind = [dict objectForKey:@"kind"];
        }
        if ([dict objectForKey:@"channelId"]) {
            _channelId = [dict objectForKey:@"channelId"];
        }
        if ([dict objectForKey:@"playlistId"]) {
            _playlistId = [dict objectForKey:@"playlistId"];
        }
        if ([dict objectForKey:@"videoId"]) {
            _videoId = [dict objectForKey:@"videoId"];
        }
    }
    return self;
}

@end
