//
//  MABYT3_Activity.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#properties
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Activity.h"

@implementation MABYT3_Activity

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#subscription";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_ActivitySnippet alloc] init];
        _contentDetails = [[MABYT3_ActivityContentDetails alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#subscription";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_ActivitySnippet alloc] init];
        _contentDetails = [[MABYT3_ActivityContentDetails alloc] init];
        
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
            _snippet = [[MABYT3_ActivitySnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
        if ([dict objectForKey:@"contentDetails"]) {
            _contentDetails = [[MABYT3_ActivityContentDetails alloc] initFromDictionary:[dict objectForKey:@"contentDetails"]];
        }
    }
    return self;
}

@end
