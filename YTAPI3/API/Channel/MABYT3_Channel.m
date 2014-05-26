//
//  MABYT3_Channel.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#properties
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Channel.h"

@implementation MABYT3_Channel

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#channel";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_ChannelSnippet alloc] init];
        _contentDetails = [[MABYT3_ChannelContentDetails alloc] init];
        _statistics = [[MABYT3_ChannelStatistics alloc] init];
        _status = [[MABYT3_ChannelStatus alloc] init];
        _invideoPromotion = [[MABYT3_ChannelInvideoPromotion alloc] init];
        _auditDetails = [[MABYT3_ChannelAuditDetails alloc] init];
        _contentOwnerDetails = [[MABYT3_ChannelContentOwnerDetails alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#channel";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_ChannelSnippet alloc] init];
        _contentDetails = [[MABYT3_ChannelContentDetails alloc] init];
        _statistics = [[MABYT3_ChannelStatistics alloc] init];
        _status = [[MABYT3_ChannelStatus alloc] init];
        _invideoPromotion = [[MABYT3_ChannelInvideoPromotion alloc] init];
        _auditDetails = [[MABYT3_ChannelAuditDetails alloc] init];
        _contentOwnerDetails = [[MABYT3_ChannelContentOwnerDetails alloc] init];
        
        if ([dict objectForKey:@"kind"]) {
            _kind = [dict objectForKey:@"kind"];
        }
        if ([dict objectForKey:@"etag"]) {
            _etag = [dict objectForKey:@"etag"];
        }
        if ([dict objectForKey:@"id"]) {
            _identifier = [dict objectForKey:@"id"];
        }
        if ([dict objectForKey:@"snippet"]) {
            _snippet = [[MABYT3_ChannelSnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
        if ([dict objectForKey:@"contentDetails"]) {
            _contentDetails = [[MABYT3_ChannelContentDetails alloc] initFromDictionary:[dict objectForKey:@"contentDetails"]];
        }
        if ([dict objectForKey:@"statistics"]) {
            _statistics = [[MABYT3_ChannelStatistics alloc] initFromDictionary:[dict objectForKey:@"statistics"]];
        }
        if ([dict objectForKey:@"status"]) {
            _status = [[MABYT3_ChannelStatus alloc] initFromDictionary:[dict objectForKey:@"status"]];
        }
        if ([dict objectForKey:@"invideoPromotion"]) {
            _invideoPromotion = [[MABYT3_ChannelInvideoPromotion alloc] initFromDictionary:[dict objectForKey:@"invideoPromotion"]];
        }
        if ([dict objectForKey:@"auditDetails"]) {
            _auditDetails = [[MABYT3_ChannelAuditDetails alloc] initFromDictionary:[dict objectForKey:@"auditDetails"]];
        }
        if ([dict objectForKey:@"contentOwnerDetails"]) {
            _contentOwnerDetails = [[MABYT3_ChannelContentOwnerDetails alloc] initFromDictionary:[dict objectForKey:@"contentOwnerDetails"]];
        }
    }
    return self;
}

@end
