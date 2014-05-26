//
//  MABYT3_VideoLiveStreamingDetails.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_VideoLiveStreamingDetails.h"

@implementation MABYT3_VideoLiveStreamingDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _actualStartTime = [[MAB_GDate alloc] init];
        _actualEndTime = [[MAB_GDate alloc] init];
        _scheduledStartTime = [[MAB_GDate alloc] init];
        _scheduledEndTime = [[MAB_GDate alloc] init];
        _concurrentViewers = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _actualStartTime = [[MAB_GDate alloc] init];
        _actualEndTime = [[MAB_GDate alloc] init];
        _scheduledStartTime = [[MAB_GDate alloc] init];
        _scheduledEndTime = [[MAB_GDate alloc] init];
        _concurrentViewers = 0;
        
        if ([dict objectForKey:@"actualStartTime"]) {
            _actualStartTime = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"actualStartTime"]];
        }
        if ([dict objectForKey:@"actualEndTime"]) {
            _actualEndTime = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"actualEndTime"]];
        }
        if ([dict objectForKey:@"scheduledStartTime"]) {
            _scheduledStartTime = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"scheduledStartTime"]];
        }
        if ([dict objectForKey:@"scheduledEndTime"]) {
            _scheduledEndTime = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"scheduledEndTime"]];
        }
        if ([dict objectForKey:@"concurrentViewers"]) {
            _concurrentViewers = [[dict objectForKey:@"concurrentViewers"] unsignedLongValue];
        }
        
    }
    return self;
}


@end
