//
//  MABYT3_ChannelBrandingSettingsInvideoPromotionPosition.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"

@interface MABYT3_ChannelInvideoPromotionPosition : NSObject

@property (nonatomic) YTInVideoPromotionPositionType type;
@property (nonatomic) YTInVideoPromotionCornerPosition cornerPosition;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
