//
//  MABYT3_RegionRestriction.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_RegionRestriction.h"

@implementation MABYT3_RegionRestriction

- (id) init {
    
    self = [super init];
    if (self) {
        _allowed = [[NSMutableArray alloc] init];
        _blocked = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _allowed = [[NSMutableArray alloc] init];
        _blocked = [[NSMutableArray alloc] init];
        
        if ([dict objectForKey:@"allowed"]) {
            _allowed = [[dict objectForKey:@"allowed"] mutableCopy];
        }
        if ([dict objectForKey:@"blocked"]) {
            _blocked = [[dict objectForKey:@"blocked"] mutableCopy];
        }
        
    }
    return self;
}

@end
