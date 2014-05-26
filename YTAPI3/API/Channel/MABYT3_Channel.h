//
//  MABYT3_Channel.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#properties
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ChannelSnippet.h"
#import "MABYT3_ChannelContentDetails.h"
#import "MABYT3_ChannelStatistics.h"
#import "MABYT3_ChannelStatus.h"
#import "MABYT3_ChannelInvideoPromotion.h"
#import "MABYT3_ChannelAuditDetails.h"
#import "MABYT3_ChannelContentOwnerDetails.h"

@interface MABYT3_Channel : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic, readonly) MABYT3_ChannelSnippet *snippet;
@property (strong, nonatomic, readonly) MABYT3_ChannelContentDetails *contentDetails;
@property (strong, nonatomic, readonly) MABYT3_ChannelStatistics *statistics;
@property (strong, nonatomic, readonly) MABYT3_ChannelStatus *status;
@property (strong, nonatomic) MABYT3_ChannelInvideoPromotion *invideoPromotion;
@property (strong, nonatomic) MABYT3_ChannelAuditDetails *auditDetails;
@property (strong, nonatomic) MABYT3_ChannelContentOwnerDetails *contentOwnerDetails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
