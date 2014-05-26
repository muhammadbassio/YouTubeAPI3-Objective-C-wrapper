//
//  MABYT3_VideoContentDetails.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_VideoContentDetails.h"

@implementation MABYT3_VideoContentDetails

- (id) init {
    
    self = [super init];
    if (self) {
        _duration = 0;
        _dimension = kYTVideoDimension2D;
        _definition = kYTVideoDefinitionSD;
        _caption = NO;
        _licensedContent = NO;
        _regionRestriction = [[MABYT3_RegionRestriction alloc] init];
        _contentRating = [[MABYT3_ContentRating alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _duration = 0;
        _dimension = kYTVideoDimension2D;
        _definition = kYTVideoDefinitionSD;
        _caption = NO;
        _licensedContent = NO;
        _regionRestriction = [[MABYT3_RegionRestriction alloc] init];
        _contentRating = [[MABYT3_ContentRating alloc] init];
        
        if ([dict objectForKey:@"duration"]) {
            NSString *dur = [[[dict objectForKey:@"duration"] stringByReplacingOccurrencesOfString:@"PT" withString:@""] stringByReplacingOccurrencesOfString:@"S" withString:@""];
            NSArray *arr = [dur componentsSeparatedByString:@"M"];
            _duration = (60 * [arr[0] integerValue]) + [arr[1] integerValue];
        }
        if ([dict objectForKey:@"dimension"]) {
            if ([[dict objectForKey:@"dimension"] isEqualToString:@"3d"]) {
                _dimension = kYTVideoDimension3D;
            }
        }
        if ([dict objectForKey:@"definition"]) {
            if ([[dict objectForKey:@"definition"] isEqualToString:@"hd"]) {
                _definition = kYTVideoDefinitionHD;
            }
        }
        if ([dict objectForKey:@"caption"]) {
            if ([[dict objectForKey:@"caption"] isEqualToString:@"true"]) {
                _caption = YES;
            }
        }
        if ([dict objectForKey:@"licensedContent"]) {
            _licensedContent = [[dict objectForKey:@"licensedContent"] boolValue];
        }
        if ([dict objectForKey:@"regionRestriction"]) {
            _regionRestriction = [[MABYT3_RegionRestriction alloc] initFromDictionary:[dict objectForKey:@"regionRestriction"]];
        }
        if ([dict objectForKey:@"contentRating"]) {
            _contentRating = [[MABYT3_ContentRating alloc] initFromDictionary:[dict objectForKey:@"contentRating"]];
        }
    }
    return self;
}


@end
