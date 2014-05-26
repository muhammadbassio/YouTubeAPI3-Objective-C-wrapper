//
//  MABYT3_ActivityPlaylistItem.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#playlistItem
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ActivityPlaylistItem.h"

@implementation MABYT3_ActivityPlaylistItem

- (id) init {
    
    self = [super init];
    if (self) {
        _playlistId = @"";
        _playlistItemId = @"";
        _resourceId = [[MABYT3_ResourceId alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _playlistId = @"";
        _playlistItemId = @"";
        _resourceId = [[MABYT3_ResourceId alloc] init];
        
        if ([dict objectForKey:@"playlistId"]) {
            _playlistId = [dict objectForKey:@"playlistId"];
        }
        if ([dict objectForKey:@"playlistItemId"]) {
            _playlistItemId = [dict objectForKey:@"playlistItemId"];
        }
        if ([dict objectForKey:@"resourceId"]) {
            _resourceId = [[MABYT3_ResourceId alloc] initFromDictionary:[dict objectForKey:@"resourceId"]];
        }
        
        
    }
    return self;
}

@end
