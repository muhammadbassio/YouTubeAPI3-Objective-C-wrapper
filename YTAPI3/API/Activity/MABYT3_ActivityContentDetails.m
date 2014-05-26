//
//  MABYT3_ActivityContentDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#contentDetails
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ActivityContentDetails.h"

@implementation MABYT3_ActivityContentDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _upload = [[MABYT3_ResourceId alloc] init];
        _like = [[MABYT3_ResourceId alloc] init];
        _favorite = [[MABYT3_ResourceId alloc] init];
        _comment = [[MABYT3_ResourceId alloc] init];
        _subscription = [[MABYT3_ResourceId alloc] init];
        _bulletin = [[MABYT3_ResourceId alloc] init];
        _channelItem = [[MABYT3_ResourceId alloc] init];
        _playlistItem = [[MABYT3_ActivityPlaylistItem alloc] init];
        _recommendation = [[MABYT3_ActivityRecommendation alloc] init];
        _social = [[MABYT3_ActivitySocial alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _upload = [[MABYT3_ResourceId alloc] init];
        _like = [[MABYT3_ResourceId alloc] init];
        _favorite = [[MABYT3_ResourceId alloc] init];
        _comment = [[MABYT3_ResourceId alloc] init];
        _subscription = [[MABYT3_ResourceId alloc] init];
        _bulletin = [[MABYT3_ResourceId alloc] init];
        _channelItem = [[MABYT3_ResourceId alloc] init];
        _playlistItem = [[MABYT3_ActivityPlaylistItem alloc] init];
        _recommendation = [[MABYT3_ActivityRecommendation alloc] init];
        _social = [[MABYT3_ActivitySocial alloc] init];
        
        if ([dict objectForKey:@"upload"]) {
            _upload = [[MABYT3_ResourceId alloc] initFromDictionary:[dict objectForKey:@"upload"]];
        }
        if ([dict objectForKey:@"playlistItem"]) {
            _playlistItem = [[MABYT3_ActivityPlaylistItem alloc] initFromDictionary:[dict objectForKey:@"playlistItem"]];
        }
        if ([dict objectForKey:@"recommendation"]) {
            _recommendation = [[MABYT3_ActivityRecommendation alloc] initFromDictionary:[dict objectForKey:@"recommendation"]];
        }
        if ([dict objectForKey:@"social"]) {
            _social = [[MABYT3_ActivitySocial alloc] initFromDictionary:[dict objectForKey:@"social"]];
        }
        if ([dict objectForKey:@"like"]) {
            if ([[dict objectForKey:@"like"] objectForKey:@"resourceId"]) {
                _like = [[MABYT3_ResourceId alloc] initFromDictionary:[[dict objectForKey:@"like"] objectForKey:@"resourceId"]];
            }
        }
        if ([dict objectForKey:@"favorite"]) {
            if ([[dict objectForKey:@"favorite"] objectForKey:@"resourceId"]) {
                _favorite = [[MABYT3_ResourceId alloc] initFromDictionary:[[dict objectForKey:@"favorite"] objectForKey:@"resourceId"]];
            }
        }
        if ([dict objectForKey:@"comment"]) {
            if ([[dict objectForKey:@"comment"] objectForKey:@"resourceId"]) {
                _comment = [[MABYT3_ResourceId alloc] initFromDictionary:[[dict objectForKey:@"comment"] objectForKey:@"resourceId"]];
            }
        }
        if ([dict objectForKey:@"subscription"]) {
            if ([[dict objectForKey:@"subscription"] objectForKey:@"resourceId"]) {
                _subscription = [[MABYT3_ResourceId alloc] initFromDictionary:[[dict objectForKey:@"subscription"] objectForKey:@"resourceId"]];
            }
        }
        if ([dict objectForKey:@"bulletin"]) {
            if ([[dict objectForKey:@"bulletin"] objectForKey:@"resourceId"]) {
                _bulletin = [[MABYT3_ResourceId alloc] initFromDictionary:[[dict objectForKey:@"bulletin"] objectForKey:@"resourceId"]];
            }
        }
        if ([dict objectForKey:@"channelItem"]) {
            if ([[dict objectForKey:@"channelItem"] objectForKey:@"resourceId"]) {
                _channelItem = [[MABYT3_ResourceId alloc] initFromDictionary:[[dict objectForKey:@"channelItem"] objectForKey:@"resourceId"]];
            }
        }
        
        
        
    }
    return self;
}

@end
