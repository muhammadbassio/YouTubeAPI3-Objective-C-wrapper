//
//  MABYT3_ChannelBrandingSettingsWatch.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings.watch
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelBrandingSettingsWatch.h"

@implementation MABYT3_ChannelBrandingSettingsWatch

- (id) init {
    
    self = [super init];
    if (self) {
        _textColor = @"";
        _backgroundColor = @"";
        _featuredPlaylistId = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _textColor = @"";
        _backgroundColor = @"";
        _featuredPlaylistId = @"";
        
        if ([dict objectForKey:@"textColor"]) {
            _textColor = [dict objectForKey:@"textColor"];
        }
        if ([dict objectForKey:@"backgroundColor"]) {
            _backgroundColor = [dict objectForKey:@"backgroundColor"];
        }
        if ([dict objectForKey:@"featuredPlaylistId"]) {
            _featuredPlaylistId = [dict objectForKey:@"featuredPlaylistId"];
        }
    }
    return self;
}

@end
