//
//  MABYT3_Video.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/videos#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Video.h"

@implementation MABYT3_Video

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#video";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_VideoSnippet alloc] init];
        _contentDetails = [[MABYT3_VideoContentDetails alloc] init];
        _status = [[MABYT3_VideoStatus alloc] init];
        _statistics = [[MABYT3_VideoStatistics alloc] init];
        
        _embedHtml = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#video";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_VideoSnippet alloc] init];
        _contentDetails = [[MABYT3_VideoContentDetails alloc] init];
        _status = [[MABYT3_VideoStatus alloc] init];
        _statistics = [[MABYT3_VideoStatistics alloc] init];
        
        _embedHtml = @"";
        
        if ([dict objectForKey:@"kind"]) {
            _kind = [dict objectForKey:@"kind"];
        }
        if ([dict objectForKey:@"etag"]) {
            _etag = [dict objectForKey:@"etag"];
        }
        if ([dict objectForKey:@"id"]) {
            _identifier = [dict objectForKey:@"id"];
        }
        if ([dict objectForKey:@"snippet"]) {
            _snippet = [[MABYT3_VideoSnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
        if ([dict objectForKey:@"contentDetails"]) {
            _contentDetails = [[MABYT3_VideoContentDetails alloc] initFromDictionary:[dict objectForKey:@"contentDetails"]];
        }
        if ([dict objectForKey:@"status"]) {
            _status = [[MABYT3_VideoStatus alloc] initFromDictionary:[dict objectForKey:@"status"]];
        }
        if ([dict objectForKey:@"statistics"]) {
            _statistics = [[MABYT3_VideoStatistics alloc] initFromDictionary:[dict objectForKey:@"statistics"]];
        }
        
        
        
        if ([dict objectForKey:@"player"]) {
            NSDictionary *dict2 = [dict objectForKey:@"player"];
            if ([dict2 objectForKey:@"privacyStatus"]) {
                _embedHtml = [dict2 objectForKey:@"embedHtml"];
            }
        }
        
        /*
        if ([dict objectForKey:@"liveStreamingDetails"]) {
            _liveStreamingDetails = [[MABYT3_VideoLiveStreamingDetails alloc] initFromDictionary:[dict objectForKey:@"liveStreamingDetails"]];
            
        }
        */
        
    }
    return self;
}

@end
