//
//  MABYT3_ChannelAuditDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#auditDetails
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ChannelAuditDetails : NSObject

@property (nonatomic) BOOL overallGoodStanding;
@property (nonatomic) BOOL communityGuidelinesGoodStanding;
@property (nonatomic) BOOL copyrightStrikesGoodStanding;
@property (nonatomic) BOOL contentIdClaimsGoodStanding;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
