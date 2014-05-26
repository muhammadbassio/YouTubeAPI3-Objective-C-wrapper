//
//  MABYT3_ChannelStatus.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#status
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelStatus.h"

@implementation MABYT3_ChannelStatus

- (id) init {
    
    self = [super init];
    if (self) {
        _privacyStatus = kYTPrivacyStatusPublic;
        _isLinked = NO;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _privacyStatus = kYTPrivacyStatusPublic;
        _isLinked = NO;
        if ([dict objectForKey:@"privacyStatus"]) {
            _privacyStatus = [self privacyStatusFromString:[dict objectForKey:@"privacyStatus"]];
        }
        if ([dict objectForKey:@"isLinked"]) {
            if ([[dict objectForKey:@"isLinked"] integerValue] > 0) {
                _isLinked = YES;
            }
        }
    }
    return self;
}

- (YTPrivacyStatus) privacyStatusFromString:(NSString *)prvString {
    
    YTPrivacyStatus retVal = kYTPrivacyStatusPublic;
    
    if ([prvString isEqualToString:@"private"]) {
        retVal = kYTPrivacyStatusPrivate;
    }
    else if ([prvString isEqualToString:@"unlisted"]) {
        retVal = kYTPrivacyStatusUnlisted;
    }
    return retVal;
}

@end
