//
//  MABYT3_Thumbnail.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Thumbnail.h"

@implementation MABYT3_Thumbnail

- (id) init {
    self = [super init];
    if (self) {
        _url = @"";
        _width = 0;
        _height = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _url = @"";
        _width = 0;
        _height = 0;
        
        if ([dict objectForKey:@"url"]) {
            _url = [dict objectForKey:@"url"];
        }
        if ([dict objectForKey:@"width"]) {
            _width = [[dict objectForKey:@"width"] integerValue];
        }
        if ([dict objectForKey:@"height"]) {
            _height = [[dict objectForKey:@"height"] integerValue];
        }
    }
    return self;
}

@end
