//
//  MABYT3_ImageURL.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_PropertyURL.h"

@implementation MABYT3_PropertyURL

- (id) init {
    
    self = [super init];
    if (self) {
        _defaultURL = @"";
        _localizedURLs = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _defaultURL = @"";
        _localizedURLs = [[NSMutableArray alloc] init];
        
        if ([dict objectForKey:@"default"]) {
            _defaultURL = [dict objectForKey:@"default"];
        }
        if ([dict objectForKey:@"localized"]) {
            NSArray *values = [dict objectForKey:@"localized"];
            if (values.count > 0) {
                for (int i = 0; i < values.count; i++) {
                    NSDictionary *vdict = values[i];
                    MABYT3_LocalizedPropertyURL *locIM = [[MABYT3_LocalizedPropertyURL alloc] initFromDictionary:vdict];
                    [_localizedURLs addObject:locIM];
                }
            }
        }
    }
    return self;
}

@end
