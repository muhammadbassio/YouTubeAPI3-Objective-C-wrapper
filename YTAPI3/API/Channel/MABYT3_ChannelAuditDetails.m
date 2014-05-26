//
//  MABYT3_ChannelAuditDetails.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#auditDetails
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelAuditDetails.h"

@implementation MABYT3_ChannelAuditDetails


- (id) init {
    
    self = [super init];
    if (self) {
        _overallGoodStanding = YES;
        _communityGuidelinesGoodStanding = YES;
        _copyrightStrikesGoodStanding = YES;
        _contentIdClaimsGoodStanding = YES;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _overallGoodStanding = YES;
        _communityGuidelinesGoodStanding = YES;
        _copyrightStrikesGoodStanding = YES;
        _contentIdClaimsGoodStanding = YES;
        
        if ([dict objectForKey:@"overallGoodStanding"]) {
            if ([[dict objectForKey:@"overallGoodStanding"] integerValue] == 0) {
                _overallGoodStanding = NO;
            }
        }
        if ([dict objectForKey:@"communityGuidelinesGoodStanding"]) {
            if ([[dict objectForKey:@"communityGuidelinesGoodStanding"] integerValue] == 0) {
                _communityGuidelinesGoodStanding = NO;
            }
        }
        if ([dict objectForKey:@"copyrightStrikesGoodStanding"]) {
            if ([[dict objectForKey:@"copyrightStrikesGoodStanding"] integerValue] == 0) {
                _copyrightStrikesGoodStanding = NO;
            }
        }
        if ([dict objectForKey:@"contentIdClaimsGoodStanding"]) {
            if ([[dict objectForKey:@"contentIdClaimsGoodStanding"] integerValue] == 0) {
                _contentIdClaimsGoodStanding = NO;
            }
        }
        
    }
    return self;
}

@end
