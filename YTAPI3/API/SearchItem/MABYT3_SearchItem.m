//
//  MABYT3_SearchItem.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/search#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_SearchItem.h"

@implementation MABYT3_SearchItem


- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#searchResult";
        _etag = @"";
        _identifier = [[MABYT3_ResourceId alloc] init];
        _snippet = [[MABYT3_SearchItemSnippet alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#searchResult";
        _etag = @"";
        _identifier = [[MABYT3_ResourceId alloc] init];
        _snippet = [[MABYT3_SearchItemSnippet alloc] init];
        
        if ([dict objectForKey:@"kind"]) {
            _kind = [dict objectForKey:@"kind"];
        }
        if ([dict objectForKey:@"etag"]) {
            _etag = [dict objectForKey:@"etag"];
        }
        if ([dict objectForKey:@"id"]) {
            _identifier = [[MABYT3_ResourceId alloc] initFromDictionary:[dict objectForKey:@"id"]];
        }
        if ([dict objectForKey:@"snippet"]) {
            _snippet = [[MABYT3_SearchItemSnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
    }
    return self;
}

@end
