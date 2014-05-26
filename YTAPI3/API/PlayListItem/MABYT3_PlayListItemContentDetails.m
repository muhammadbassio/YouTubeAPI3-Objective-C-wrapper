//
//  MABYT3_PlayListItemContentDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlistItems#contentDetails
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_PlayListItemContentDetails.h"

@implementation MABYT3_PlayListItemContentDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _videoId = @"";
        _startAt = @"";
        _endAt = @"";
        _note = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _videoId = @"";
        _startAt = @"0";
        _endAt = @"0";
        _note = @"";
        
        if ([dict objectForKey:@"videoId"]) {
            _videoId = [dict objectForKey:@"videoId"];
        }
        if ([dict objectForKey:@"startAt"]) {
            _startAt = [dict objectForKey:@"startAt"];
        }
        if ([dict objectForKey:@"endAt"]) {
            _endAt = [dict objectForKey:@"endAt"];
        }
        if ([dict objectForKey:@"note"]) {
            _note = [dict objectForKey:@"note"];
        }
    }
    return self;
}

@end
