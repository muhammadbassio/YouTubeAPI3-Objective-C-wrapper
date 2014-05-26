//
//  MABYT3_PlayListItem.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlistItems#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_PlayListItem.h"

@implementation MABYT3_PlayListItem

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#playlistItem";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_PlayListItemSnippet alloc] init];
        _contentDetails = [[MABYT3_PlayListItemContentDetails alloc] init];
        _privacyStatus = kYTPrivacyStatusPublic;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#playlistItem";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_PlayListItemSnippet alloc] init];
        _contentDetails = [[MABYT3_PlayListItemContentDetails alloc] init];
        _privacyStatus = kYTPrivacyStatusPublic;
        
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
            _snippet = [[MABYT3_PlayListItemSnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
        if ([dict objectForKey:@"contentDetails"]) {
            _contentDetails = [[MABYT3_PlayListItemContentDetails alloc] initFromDictionary:[dict objectForKey:@"contentDetails"]];
        }
        if ([dict objectForKey:@"status"]) {
            NSDictionary *dict2 = [dict objectForKey:@"status"];
            if ([dict2 objectForKey:@"privacyStatus"]) {
                _privacyStatus = [self privacyStatusFromString:[dict2 objectForKey:@"privacyStatus"]];
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
