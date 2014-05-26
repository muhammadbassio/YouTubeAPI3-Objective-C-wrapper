//
//  MABYT3_ChannelInvideoPromotionItem.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelInvideoPromotionItem.h"

@implementation MABYT3_ChannelInvideoPromotionItem

- (id) init {
    
    self = [super init];
    if (self) {
        _identifier = [[MABYT3_ChannelInvideoPromotionItemIdentifier alloc] init];
        _timing = [[MABYT3_ChannelInvideoPromotionPosition alloc] init];
        _customMessage = @"";
        _promotedByContentOwner = NO;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _identifier = [[MABYT3_ChannelInvideoPromotionItemIdentifier alloc] init];
        _timing = [[MABYT3_ChannelInvideoPromotionPosition alloc] init];
        _customMessage = @"";
        _promotedByContentOwner = NO;
        
        if ([dict objectForKey:@"id"]) {
            _identifier = [[MABYT3_ChannelInvideoPromotionItemIdentifier alloc] initFromDictionary:[dict objectForKey:@"id"]];
        }
        if ([dict objectForKey:@"timing"]) {
            _timing = [[MABYT3_ChannelInvideoPromotionPosition alloc] initFromDictionary:[dict objectForKey:@"timing"]];
        }
        if ([dict objectForKey:@"customMessage"]) {
            _customMessage = [dict objectForKey:@"customMessage"];
        }
        if ([dict objectForKey:@"promotedByContentOwner"]) {
            if ([[dict objectForKey:@"promotedByContentOwner"] integerValue] > 0) {
                _promotedByContentOwner = YES;
            }
        }
    }
    return self;
}

@end
