//
//  MABYT3_Location.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Location.h"

@implementation MABYT3_Location

- (id) init {
    
    self = [super init];
    if (self) {
        _latitude = 0.0;
        _longitude = 0.0;
        _altitude = 0.0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _latitude = 0.0;
        _longitude = 0.0;
        _altitude = 0.0;
        
        if ([dict objectForKey:@"latitude"]) {
            _latitude = [[dict objectForKey:@"latitude"] doubleValue];
        }
        if ([dict objectForKey:@"longitude"]) {
            _longitude = [[dict objectForKey:@"longitude"] doubleValue];
        }
        if ([dict objectForKey:@"altitude"]) {
            _altitude = [[dict objectForKey:@"altitude"] doubleValue];
        }
        
    }
    return self;
}

@end
