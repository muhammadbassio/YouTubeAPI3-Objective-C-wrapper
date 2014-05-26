//
//  MABYT3_ChannelInvideoPromotionDefaultTiming.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"

@interface MABYT3_ChannelInvideoPromotionDefaultTiming : NSObject

@property (nonatomic) YTInVideoPromotionType type;
@property (nonatomic) unsigned long offsetMs;
@property (nonatomic) unsigned long durationMs;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
