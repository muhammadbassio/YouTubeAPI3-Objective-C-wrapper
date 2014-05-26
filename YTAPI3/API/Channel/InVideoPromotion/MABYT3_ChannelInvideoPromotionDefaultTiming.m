//
//  MABYT3_ChannelInvideoPromotionDefaultTiming.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelInvideoPromotionDefaultTiming.h"

@implementation MABYT3_ChannelInvideoPromotionDefaultTiming

- (id) init {
    
    self = [super init];
    if (self) {
        _type = kYTInVideoPromotionTypeStart;
        _offsetMs = 0;
        _durationMs = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _type = kYTInVideoPromotionTypeStart;
        _offsetMs = 0;
        _durationMs = 0;
        if ([dict objectForKey:@"type"]) {
            _type = [self promotionTypeFromString:[dict objectForKey:@"type"]];
        }
        if ([dict objectForKey:@"offsetMs"]) {
            _offsetMs = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"offsetMs"]] unsignedLongValue];
        }
        if ([dict objectForKey:@"durationMs"]) {
            _durationMs = [[[[NSNumberFormatter alloc] init] numberFromString:[dict objectForKey:@"durationMs"]] unsignedLongValue];
        }
        
    }
    return self;
}

- (YTInVideoPromotionType) promotionTypeFromString:(NSString *)proString {
    
    YTInVideoPromotionType retVal = kYTInVideoPromotionTypeStart;
    
    if ([proString isEqualToString:@"offsetFromEnd"]) {
        retVal = kYTInVideoPromotionTypeEnd;
    }
    return retVal;
}

@end
