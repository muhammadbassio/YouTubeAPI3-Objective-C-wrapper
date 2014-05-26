//
//  MABYT3_GuideCategory.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/guideCategories#properties
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_GuideCategory.h"

@implementation MABYT3_GuideCategory

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#guideCategory";
        _etag = @"";
        _identifier = @"";
        _channelId = @"";
        _title = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#guideCategory";
        _etag = @"";
        _identifier = @"";
        _channelId = @"";
        _title = @"";
        
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
            NSDictionary *dict2 = [dict objectForKey:@"snippet"];
            if ([dict2 objectForKey:@"title"]) {
                _title = [dict2 objectForKey:@"title"];
            }
            if ([dict2 objectForKey:@"channelId"]) {
                _channelId = [dict2 objectForKey:@"channelId"];
            }
        }
        
    }
    return self;
}

@end
