//
//  MABYT3_ChannelInvideoPromotionItemIdentifier.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"

@interface MABYT3_ChannelInvideoPromotionItemIdentifier : NSObject

@property (nonatomic) YTPromotedResourceType type;
@property (strong, nonatomic) NSString *videoId;
@property (strong, nonatomic) NSString *websiteUrl;
@property (strong, nonatomic) NSString *recentlyUploadedBy;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
