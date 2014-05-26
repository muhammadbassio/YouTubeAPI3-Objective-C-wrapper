//
//  MABYT3_ChannelBrandingSettingsInvideoPromotionPosition.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelInvideoPromotionPosition.h"

@implementation MABYT3_ChannelInvideoPromotionPosition

- (id) init {
    
    self = [super init];
    if (self) {
        _type = kYTInVideoPromotionPositionTypeCorner;
        _cornerPosition = kYTInVideoPromotionCornerPositionbottomLeft;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _type = kYTInVideoPromotionPositionTypeCorner;
        _cornerPosition = kYTInVideoPromotionCornerPositionbottomLeft;
        if ([dict objectForKey:@"cornerPosition"]) {
            _cornerPosition = [self cornerPositionFromString:[dict objectForKey:@"cornerPosition"]];
        }
        
    }
    return self;
}

- (YTInVideoPromotionCornerPosition) cornerPositionFromString:(NSString *)crnrString {
    
    YTInVideoPromotionCornerPosition retVal = kYTInVideoPromotionCornerPositionbottomLeft;
    
    if ([crnrString isEqualToString:@"bottomRight"]) {
        retVal = kYTInVideoPromotionCornerPositionbottomRight;
    }
    else if ([crnrString isEqualToString:@"topLeft"]) {
        retVal = kYTInVideoPromotionCornerPositiontopLeft;
    }
    else if ([crnrString isEqualToString:@"topRight"]) {
        retVal = kYTInVideoPromotionCornerPositiontopRight;
    }
    return retVal;
}


@end
