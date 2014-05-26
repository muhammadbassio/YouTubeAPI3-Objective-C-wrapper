//
//  MABYT3_ChannelSectionSnippet.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channelSections#snippet
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelSectionSnippet.h"

@implementation MABYT3_ChannelSectionSnippet

- (id) init {
    
    self = [super init];
    if (self) {
        _type = kYTChannelSectioTypeAllPlaylists;
        _style = kYTChannelSectioStyleHorizontalRow;
        _channelId = @"";
        _title = @"";
        _position = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _type = kYTChannelSectioTypeAllPlaylists;
        _style = kYTChannelSectioStyleHorizontalRow;
        _channelId = @"";
        _title = @"";
        _position = 0;
        
        if ([dict objectForKey:@"channelId"]) {
            _channelId = [dict objectForKey:@"channelId"];
        }
        if ([dict objectForKey:@"title"]) {
            _title = [dict objectForKey:@"title"];
        }
        if ([dict objectForKey:@"position"]) {
            _position = [[dict objectForKey:@"position"] unsignedLongValue];
        }
        if ([dict objectForKey:@"style"]) {
            _style = [self sectionStyleFromString:[dict objectForKey:@"style"]];
        }
        if ([dict objectForKey:@"type"]) {
            _type = [self sectionTypeFromString:[dict objectForKey:@"type"]];
        }
    }
    return self;
}

- (YTChannelSectioStyle) sectionStyleFromString:(NSString *)stlString {
    
    YTChannelSectioStyle retVal = kYTChannelSectioStyleHorizontalRow;
    
    if ([stlString isEqualToString:@"verticalList"]) {
        retVal = kYTChannelSectioStyleVerticalList;
    }
    return retVal;
}

- (YTChannelSectioType) sectionTypeFromString:(NSString *)typString {
    
    YTChannelSectioType retVal = kYTChannelSectioTypeAllPlaylists;
    
    if ([typString isEqualToString:@"completedEvents"]) {
        retVal = kYTChannelSectioTypeCompletedEvents;
    }
    if ([typString isEqualToString:@"likedPlaylists"]) {
        retVal = kYTChannelSectioTypeLikedPlaylists;
    }
    if ([typString isEqualToString:@"likes"]) {
        retVal = kYTChannelSectioTypeLikes;
    }
    if ([typString isEqualToString:@"liveEvents"]) {
        retVal = kYTChannelSectioTypeLiveEvents;
    }
    if ([typString isEqualToString:@"multipleChannels"]) {
        retVal = kYTChannelSectioTypeMultipleChannels;
    }
    if ([typString isEqualToString:@"multiplePlaylists"]) {
        retVal = kYTChannelSectioTypeMultiplePlaylists;
    }
    if ([typString isEqualToString:@"popularUploads"]) {
        retVal = kYTChannelSectioTypePopularUploads;
    }
    if ([typString isEqualToString:@"recentActivity"]) {
        retVal = kYTChannelSectioTypeRecentActivity;
    }
    if ([typString isEqualToString:@"recentPosts"]) {
        retVal = kYTChannelSectioTypeRecentPosts;
    }
    if ([typString isEqualToString:@"recentUploads"]) {
        retVal = kYTChannelSectioTypeRecentUploads;
    }
    if ([typString isEqualToString:@"singlePlaylist"]) {
        retVal = kYTChannelSectioTypeSinglePlaylist;
    }
    if ([typString isEqualToString:@"upcomingEvents"]) {
        retVal = kYTChannelSectioTypeUpcomingEvents;
    }
    return retVal;
}

@end
