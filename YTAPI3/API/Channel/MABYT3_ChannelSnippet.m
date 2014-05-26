//
//  MABYT3_ChannelSnippet.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#snippet
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelSnippet.h"

@implementation MABYT3_ChannelSnippet

- (id) init {
    
    self = [super init];
    if (self) {
        _title = @"";
        _description = @"";
        _publishedAt = [[MAB_GDate alloc] init];
        _thumbnails = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _title = @"";
        _description = @"";
        _publishedAt = [[MAB_GDate alloc] init];
        _thumbnails = [[NSMutableDictionary alloc] init];
        
        if ([dict objectForKey:@"title"]) {
            _title = [dict objectForKey:@"title"];
        }
        if ([dict objectForKey:@"description"]) {
            _description = [dict objectForKey:@"description"];
        }
        if ([dict objectForKey:@"publishedAt"]) {
            _publishedAt = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"publishedAt"]];
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

@end
