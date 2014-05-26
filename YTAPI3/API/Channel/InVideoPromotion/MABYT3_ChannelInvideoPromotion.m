//
//  MABYT3_ChannelInvideoPromotion.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#invideoPromotion
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelInvideoPromotion.h"

@implementation MABYT3_ChannelInvideoPromotion

- (id) init {
    
    self = [super init];
    if (self) {
        _defaultTiming = [[MABYT3_ChannelInvideoPromotionDefaultTiming alloc] init];
        _position = [[MABYT3_ChannelInvideoPromotionPosition alloc] init];
        _items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _defaultTiming = [[MABYT3_ChannelInvideoPromotionDefaultTiming alloc] init];
        _position = [[MABYT3_ChannelInvideoPromotionPosition alloc] init];
        _items = [[NSMutableArray alloc] init];
        
        if ([dict objectForKey:@"defaultTiming"]) {
            _defaultTiming = [[MABYT3_ChannelInvideoPromotionDefaultTiming alloc] initFromDictionary:[dict objectForKey:@"defaultTiming"]];
        }
        if ([dict objectForKey:@"position"]) {
            _position = [[MABYT3_ChannelInvideoPromotionPosition alloc] initFromDictionary:[dict objectForKey:@"position"]];
        }
        if ([dict objectForKey:@"items"]) {
            NSArray *values = [dict objectForKey:@"items"];
            for (int i = 0; i < values.count; i++) {
                MABYT3_ChannelInvideoPromotionItem *itm = [[MABYT3_ChannelInvideoPromotionItem alloc] initFromDictionary:values[i]];
                [_items addObject:itm];
            }
        }
    }
    return self;
}

@end
