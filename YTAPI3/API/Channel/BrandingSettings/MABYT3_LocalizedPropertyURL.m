//
//  MABYT3_LocalizedImageURL.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_LocalizedPropertyURL.h"

@implementation MABYT3_LocalizedPropertyURL

- (id) init {
    
    self = [super init];
    if (self) {
        _URLvalue = @"";
        _language = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _URLvalue = @"";
        _language = @"";
        
        if ([dict objectForKey:@"value"]) {
            _URLvalue = [dict objectForKey:@"value"];
        }
        if ([dict objectForKey:@"language"]) {
            _language = [dict objectForKey:@"language"];
        }
    }
    return self;
}

@end
