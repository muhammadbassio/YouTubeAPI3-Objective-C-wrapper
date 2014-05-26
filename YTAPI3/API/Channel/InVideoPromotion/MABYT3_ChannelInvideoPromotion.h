//
//  MABYT3_ChannelInvideoPromotion.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#invideoPromotion
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ChannelInvideoPromotionDefaultTiming.h"
#import "MABYT3_ChannelInvideoPromotionPosition.h"
#import "MABYT3_ChannelInvideoPromotionItem.h"

@interface MABYT3_ChannelInvideoPromotion : NSObject

@property (strong, nonatomic) MABYT3_ChannelInvideoPromotionDefaultTiming *defaultTiming;
@property (strong, nonatomic) MABYT3_ChannelInvideoPromotionPosition *position;
@property (strong, nonatomic) NSMutableArray *items;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
