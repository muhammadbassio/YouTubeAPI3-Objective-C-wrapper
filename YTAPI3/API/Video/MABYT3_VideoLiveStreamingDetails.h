//
//  MABYT3_VideoLiveStreamingDetails.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"

@interface MABYT3_VideoLiveStreamingDetails : NSObject

@property (strong, nonatomic) MAB_GDate *actualStartTime;
@property (strong, nonatomic) MAB_GDate *actualEndTime;
@property (strong, nonatomic) MAB_GDate *scheduledStartTime;
@property (strong, nonatomic) MAB_GDate *scheduledEndTime;
@property (nonatomic) unsigned long concurrentViewers;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
