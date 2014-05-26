//
//  MABYT3_VideoRecordingDetails.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_VideoRecordingDetails.h"

@implementation MABYT3_VideoRecordingDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _locationDescription = @"";
        _location = [[MABYT3_Location alloc] init];
        _recordingDate = [[MAB_GDate alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _locationDescription = @"";
        _location = [[MABYT3_Location alloc] init];
        _recordingDate = [[MAB_GDate alloc] init];
        
        if ([dict objectForKey:@"locationDescription"]) {
            _locationDescription = [dict objectForKey:@"locationDescription"];
        }
        if ([dict objectForKey:@"location"]) {
            _location = [[MABYT3_Location alloc] initFromDictionary:[dict objectForKey:@"location"]];
        }
        if ([dict objectForKey:@"recordingDate"]) {
            _recordingDate = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"recordingDate"]];
        }
        
    }
    return self;
}

@end
