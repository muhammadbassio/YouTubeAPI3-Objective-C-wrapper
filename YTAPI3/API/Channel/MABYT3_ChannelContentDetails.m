//
//  MABYT3_ChannelContentDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#contentDetails
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelContentDetails.h"

@implementation MABYT3_ChannelContentDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _googlePlusUserId = @"";
        _relatedPlaylists = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _googlePlusUserId = @"";
        _relatedPlaylists = [[NSMutableDictionary alloc] init];
        if ([dict objectForKey:@"relatedPlaylists"]) {
            _relatedPlaylists = [dict objectForKey:@"relatedPlaylists"];
        }
        if ([dict objectForKey:@"googlePlusUserId"]) {
            _googlePlusUserId = [dict objectForKey:@"googlePlusUserId"];
        }
    }
    return self;
}

@end
