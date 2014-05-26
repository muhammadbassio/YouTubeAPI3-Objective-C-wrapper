//
//  MABYT3_SearchItemSnippet.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/search#snippet
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_SearchItemSnippet.h"

@implementation MABYT3_SearchItemSnippet

- (id) init {
    
    self = [super init];
    if (self) {
        _publishedAt = [[MAB_GDate alloc] init];
        _channelId = @"";
        _title = @"";
        _description = @"";
        _thumbnails = [[NSMutableDictionary alloc] init];
        _channelTitle = @"";
        _liveBroadcastContent = kYTLiveBroadcastContentNone;
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
        _liveBroadcastContent = kYTLiveBroadcastContentNone;
        
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
        if ([dict objectForKey:@"liveBroadcastContent"]) {
            _liveBroadcastContent = [self liveBroadcastContentFromString:[dict objectForKey:@"liveBroadcastContent"]];
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

- (YTLiveBroadcastContent) liveBroadcastContentFromString:(NSString *)prvString {
    
    YTLiveBroadcastContent retVal = kYTLiveBroadcastContentNone;
    
    if ([prvString isEqualToString:@"upcoming"]) {
        retVal = kYTLiveBroadcastContentUpcoming;
    }
    else if ([prvString isEqualToString:@"live"]) {
        retVal = kYTLiveBroadcastContentLive;
    }
    return retVal;
}

@end
