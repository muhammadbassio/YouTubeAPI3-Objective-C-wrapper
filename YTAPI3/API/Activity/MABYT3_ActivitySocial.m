//
//  MABYT3_ActivitySocial.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#social
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ActivitySocial.h"

@implementation MABYT3_ActivitySocial

- (id) init {
    
    self = [super init];
    if (self) {
        _type = @"";
        _resourceId = [[MABYT3_ResourceId alloc] init];
        _author = @"";
        _referenceUrl = @"";
        _imageUrl = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _type = @"";
        _resourceId = [[MABYT3_ResourceId alloc] init];
        _author = @"";
        _referenceUrl = @"";
        _imageUrl = @"";
        
        if ([dict objectForKey:@"type"]) {
            _type = [dict objectForKey:@"type"];
        }
        if ([dict objectForKey:@"resourceId"]) {
            _resourceId = [[MABYT3_ResourceId alloc] initFromDictionary:[dict objectForKey:@"resourceId"]];
        }
        if ([dict objectForKey:@"author"]) {
            _author = [dict objectForKey:@"author"];
        }
        if ([dict objectForKey:@"referenceUrl"]) {
            _referenceUrl = [dict objectForKey:@"referenceUrl"];
        }
        if ([dict objectForKey:@"imageUrl"]) {
            _imageUrl = [dict objectForKey:@"imageUrl"];
        }
        
        
    }
    return self;
}

@end
