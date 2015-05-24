//
//  MABYT3_ActivitySnippet.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#snippet
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ActivitySnippet.h"

@implementation MABYT3_ActivitySnippet

@synthesize description = _description;

- (id) init {
    
    self = [super init];
    if (self) {
        _publishedAt = [[MAB_GDate alloc] init];
        _channelId = @"";
        _title = @"";
        _description = @"";
        _thumbnails = [[NSMutableDictionary alloc] init];
        _channelTitle = @"";
        _type = kYTActivityUpload;
        _groupId = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _publishedAt = [[MAB_GDate alloc] init];
        _channelId = @"";
        _title = @"";
        _description = @"";
        _thumbnails = [[NSMutableDictionary alloc] init];
        _channelTitle = @"";
        _type = kYTActivityUpload;
        _groupId = @"";
        
        if ([dict objectForKey:@"publishedAt"]) {
            _publishedAt = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"publishedAt"]];
        }
        if ([dict objectForKey:@"channelId"]) {
            _channelId = [dict objectForKey:@"channelId"];
        }
        if ([dict objectForKey:@"title"]) {
            _title = [dict objectForKey:@"title"];
        }
        if ([dict objectForKey:@"description"]) {
            _description = [dict objectForKey:@"description"];
        }
        if ([dict objectForKey:@"channelTitle"]) {
            _channelTitle = [dict objectForKey:@"channelTitle"];
        }
        
        if ([dict objectForKey:@"type"]) {
            _type = [self feedTypeFromString:[dict objectForKey:@"type"]];
        }
        
        if ([dict objectForKey:@"thumbnails"]) {
            NSDictionary *thmbDict = [dict objectForKey:@"thumbnails"];
            NSArray *keys = [thmbDict allKeys];
            for (int i = 0; i < keys.count; i++) {
                MABYT3_Thumbnail *thmb = [[MABYT3_Thumbnail alloc] initFromDictionary:[thmbDict objectForKey:keys[i]]];
                [_thumbnails setObject:thmb forKey:keys[i]];
            }
        }
    }
    return self;
}

- (YTActivityFeedType) feedTypeFromString:(NSString *)feedString {
    
    YTActivityFeedType retVal = kYTActivityUpload;
    
    if ([feedString isEqualToString:@"bulletin"]) {
        retVal = kYTActivityBulletin;
    }
    else if ([feedString isEqualToString:@"channelItem"]) {
        retVal = kYTActivityChannelItem;
    }
    else if ([feedString isEqualToString:@"comment"]) {
        retVal = kYTActivityComment;
    }
    else if ([feedString isEqualToString:@"favorite"]) {
        retVal = kYTActivityFavorite;
    }
    else if ([feedString isEqualToString:@"like"]) {
        retVal = kYTActivityLike;
    }
    else if ([feedString isEqualToString:@"playlistItem"]) {
        retVal = kYTActivityPlaylistItem;
    }
    else if ([feedString isEqualToString:@"recommendation"]) {
        retVal = kYTActivityRecommendation;
    }
    else if ([feedString isEqualToString:@"social"]) {
        retVal = kYTActivitySocial;
    }
    else if ([feedString isEqualToString:@"subscription"]) {
        retVal = kYTActivitySubscription;
    }
    return retVal;
}


@end
