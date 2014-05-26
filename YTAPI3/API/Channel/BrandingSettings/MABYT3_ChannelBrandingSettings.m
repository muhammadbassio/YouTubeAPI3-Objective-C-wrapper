//
//  MABYT3_ChannelBrandingSettings.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelBrandingSettings.h"

@implementation MABYT3_ChannelBrandingSettings

- (id) init {
    
    self = [super init];
    if (self) {
        _channel = [[MABYT3_ChannelBrandingSettingsChannel alloc] init];
        _watch = [[MABYT3_ChannelBrandingSettingsWatch alloc] init];
        _image = [[MABYT3_ChannelBrandingSettingsImage alloc] init];
        _hints = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _channel = [[MABYT3_ChannelBrandingSettingsChannel alloc] init];
        _watch = [[MABYT3_ChannelBrandingSettingsWatch alloc] init];
        _image = [[MABYT3_ChannelBrandingSettingsImage alloc] init];
        _hints = [[NSMutableArray alloc] init];
        
        if ([dict objectForKey:@"channel"]) {
            _channel = [[MABYT3_ChannelBrandingSettingsChannel alloc] initFromDictionary:[dict objectForKey:@"channel"]];
        }
        if ([dict objectForKey:@"watch"]) {
            _watch = [[MABYT3_ChannelBrandingSettingsWatch alloc] initFromDictionary:[dict objectForKey:@"watch"]];
        }
        if ([dict objectForKey:@"image"]) {
            _image = [[MABYT3_ChannelBrandingSettingsImage alloc] initFromDictionary:[dict objectForKey:@"image"]];
        }
        if ([dict objectForKey:@"hints"]) {
            _image = [dict objectForKey:@"hints"];
        }
        
    }
    return self;
}

@end
