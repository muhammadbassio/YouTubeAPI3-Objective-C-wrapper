//
//  MABYT3_ActivityRecommendation.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#recommendation
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ActivityRecommendation.h"

@implementation MABYT3_ActivityRecommendation

- (id) init {
    
    self = [super init];
    if (self) {
        _resourceId = [[MABYT3_ResourceId alloc] init];
        _seedResourceId = [[MABYT3_ResourceId alloc] init];
        _reason = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _resourceId = [[MABYT3_ResourceId alloc] init];
        _seedResourceId = [[MABYT3_ResourceId alloc] init];
        _reason = @"";
        
        if ([dict objectForKey:@"reason"]) {
            _reason = [dict objectForKey:@"reason"];
        }
        if ([dict objectForKey:@"resourceId"]) {
            _resourceId = [[MABYT3_ResourceId alloc] initFromDictionary:[dict objectForKey:@"resourceId"]];
        }
        if ([dict objectForKey:@"seedResourceId"]) {
            _seedResourceId = [[MABYT3_ResourceId alloc] initFromDictionary:[dict objectForKey:@"seedResourceId"]];
        }
        
        
    }
    return self;
}

@end
