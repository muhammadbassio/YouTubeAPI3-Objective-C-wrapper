//
//  MABYT3_VideoStatistics.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_VideoStatistics.h"

@implementation MABYT3_VideoStatistics

- (id) init {
    
    self = [super init];
    if (self) {
        _viewCount = 0;
        _likeCount = 0;
        _dislikeCount = 0;
        _favoriteCount = 0;
        _commentCount = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _viewCount = 0;
        _likeCount = 0;
        _dislikeCount = 0;
        _favoriteCount = 0;
        _commentCount = 0;
        
        if ([dict objectForKey:@"viewCount"]) {
            _viewCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"viewCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"likeCount"]) {
            _likeCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"likeCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"dislikeCount"]) {
            _dislikeCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"dislikeCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"favoriteCount"]) {
            _favoriteCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"favoriteCount"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"commentCount"]) {
            _commentCount = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"commentCount"]] unsignedLongValue];
        }
    }
    return self;
}

@end
