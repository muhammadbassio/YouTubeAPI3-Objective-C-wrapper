//
//  MABYT3_ChannelBrandingSettingsChannel.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings.channel
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelBrandingSettingsChannel.h"

@implementation MABYT3_ChannelBrandingSettingsChannel

@synthesize description = _description;

- (id) init {
    
    self = [super init];
    if (self) {
        _title = @"";
        _description = @"";
        _keywords = @"";
        _defaultTab = @"";
        _trackingAnalyticsAccountId = @"";
        _moderateComments = NO;
        _showRelatedChannels = NO;
        _showBrowseView = NO;
        _featuredChannelsTitle = @"";
        _featuredChannelsUrls = [[NSMutableArray alloc] init];
        _unsubscribedTrailer = @"";
        _profileColor = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _title = @"";
        _description = @"";
        _keywords = @"";
        _defaultTab = @"";
        _trackingAnalyticsAccountId = @"";
        _moderateComments = NO;
        _showRelatedChannels = NO;
        _showBrowseView = NO;
        _featuredChannelsTitle = @"";
        _featuredChannelsUrls = [[NSMutableArray alloc] init];
        _unsubscribedTrailer = @"";
        _profileColor = @"";
        
        if ([dict objectForKey:@"title"]) {
            _title = [dict objectForKey:@"title"];
        }
        if ([dict objectForKey:@"description"]) {
            _description = [dict objectForKey:@"description"];
        }
        if ([dict objectForKey:@"keywords"]) {
            _keywords = [dict objectForKey:@"keywords"];
        }
        if ([dict objectForKey:@"defaultTab"]) {
            _defaultTab = [dict objectForKey:@"defaultTab"];
        }
        if ([dict objectForKey:@"trackingAnalyticsAccountId"]) {
            _trackingAnalyticsAccountId = [dict objectForKey:@"trackingAnalyticsAccountId"];
        }
        if ([dict objectForKey:@"moderateComments"]) {
            if ([[dict objectForKey:@"moderateComments"] integerValue] > 0) {
                _moderateComments = YES;
            }
        }
        if ([dict objectForKey:@"showRelatedChannels"]) {
            if ([[dict objectForKey:@"showRelatedChannels"] integerValue] > 0) {
                _showRelatedChannels = YES;
            }
        }
        if ([dict objectForKey:@"showBrowseView"]) {
            if ([[dict objectForKey:@"showBrowseView"] integerValue] > 0) {
                _showBrowseView = YES;
            }
        }
        if ([dict objectForKey:@"featuredChannelsTitle"]) {
            _featuredChannelsTitle = [dict objectForKey:@"featuredChannelsTitle"];
        }
        if ([dict objectForKey:@"featuredChannelsUrls"]) {
            _featuredChannelsUrls = [dict objectForKey:@"featuredChannelsUrls"];
        }
        if ([dict objectForKey:@"unsubscribedTrailer"]) {
            _unsubscribedTrailer = [dict objectForKey:@"unsubscribedTrailer"];
        }
        if ([dict objectForKey:@"profileColor"]) {
            _profileColor = [dict objectForKey:@"profileColor"];
        }
    }
    return self;
}

@end
