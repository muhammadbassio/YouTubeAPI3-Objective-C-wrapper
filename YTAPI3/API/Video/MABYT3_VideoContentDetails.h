//
//  MABYT3_VideoContentDetails.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"
#import "MABYT3_RegionRestriction.h"
#import "MABYT3_ContentRating.h"

@interface MABYT3_VideoContentDetails : NSObject

@property (nonatomic) NSUInteger duration;
@property (nonatomic) YTVideoDimension dimension;
@property (nonatomic) YTVideoDefinition definition;
@property (nonatomic) BOOL caption;
@property (nonatomic) BOOL licensedContent;
@property (strong, nonatomic) MABYT3_RegionRestriction *regionRestriction;
@property (strong, nonatomic) MABYT3_ContentRating *contentRating;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
