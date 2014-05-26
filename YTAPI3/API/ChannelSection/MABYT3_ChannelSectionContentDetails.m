//
//  MABYT3_ChannelSectionContentDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channelSections#contentDetails
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelSectionContentDetails.h"

@implementation MABYT3_ChannelSectionContentDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _channels = [[NSMutableArray alloc] init];
        _playlists = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _channels = [[NSMutableArray alloc] init];
        _playlists = [[NSMutableArray alloc] init];
        
        if ([dict objectForKey:@"playlists"]) {
            _playlists = [[dict objectForKey:@"playlists"] mutableCopy];
        }
        if ([dict objectForKey:@"channels"]) {
            _channels = [[dict objectForKey:@"channels"] mutableCopy];
        }
    }
    return self;
}

@end
