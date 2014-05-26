//
//  MABYT3_ChannelContentOwnerDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#contentOwnerDetails
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelContentOwnerDetails.h"

@implementation MABYT3_ChannelContentOwnerDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _contentOwner = @"";
        _timeLinked = [[MAB_GDate alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _contentOwner = @"";
        _timeLinked = [[MAB_GDate alloc] init];
        
        if ([dict objectForKey:@"contentOwner"]) {
            _contentOwner = [dict objectForKey:@"contentOwner"];
        }
        if ([dict objectForKey:@"timeLinked"]) {
            _timeLinked = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"timeLinked"]];
        }
    }
    return self;
}


@end
