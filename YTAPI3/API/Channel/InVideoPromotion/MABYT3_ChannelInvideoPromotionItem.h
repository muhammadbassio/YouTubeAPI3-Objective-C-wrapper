//
//  MABYT3_ChannelInvideoPromotionItem.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ChannelInvideoPromotionItemIdentifier.h"
#import "MABYT3_ChannelInvideoPromotionPosition.h"

@interface MABYT3_ChannelInvideoPromotionItem : NSObject

@property (strong, nonatomic) MABYT3_ChannelInvideoPromotionItemIdentifier *identifier;
@property (strong, nonatomic) MABYT3_ChannelInvideoPromotionPosition *timing;
@property (strong, nonatomic) NSString *customMessage;
@property (nonatomic) BOOL promotedByContentOwner;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
