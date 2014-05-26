//
//  MABYT3_VideoStatus.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_VideoStatus.h"

@implementation MABYT3_VideoStatus

- (id) init {
    
    self = [super init];
    if (self) {
        _uploadStatus = @"processed";
        _failureReason = @"";
        _rejectionReason = @"";
        _privacyStatus = kYTPrivacyStatusPrivate;
        _publishedAt = [[MAB_GDate alloc] init];
        _license = kYTVideoLicenseYT;
        _embeddable = YES;
        _publicStatsViewable = YES;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _uploadStatus = @"processed";
        _failureReason = @"";
        _rejectionReason = @"";
        _privacyStatus = kYTPrivacyStatusPrivate;
        _publishedAt = [[MAB_GDate alloc] init];
        _license = kYTVideoLicenseYT;
        _embeddable = YES;
        _publicStatsViewable = YES;
        
        if ([dict objectForKey:@"uploadStatus"]) {
            _uploadStatus = [dict objectForKey:@"uploadStatus"];
        }
        if ([dict objectForKey:@"failureReason"]) {
            _failureReason = [dict objectForKey:@"failureReason"];
        }
        if ([dict objectForKey:@"rejectionReason"]) {
            _rejectionReason = [dict objectForKey:@"rejectionReason"];
        }
        if ([dict objectForKey:@"privacyStatus"]) {
            _privacyStatus = [self privacyStatusFromString:[dict objectForKey:@"privacyStatus"]];
        }
        if ([dict objectForKey:@"publishedAt"]) {
            _publishedAt = [[MAB_GDate alloc] initFromString:[dict objectForKey:@"publishedAt"]];
        }
        if ([dict objectForKey:@"embeddable"]) {
            _embeddable = [[dict objectForKey:@"embeddable"] boolValue];
        }
        if ([dict objectForKey:@"publicStatsViewable"]) {
            _publicStatsViewable = [[dict objectForKey:@"publicStatsViewable"] boolValue];
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
