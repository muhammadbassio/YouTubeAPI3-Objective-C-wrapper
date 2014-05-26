//
//  MABYT3_PlayList.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlists#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_PlayList.h"

@implementation MABYT3_PlayList

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#playlist";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_PlayListSnippet alloc] init];
        //_contentDetails = [[MABYT3_PlayListContentDetails alloc] init];
        _privacyStatus = kYTPrivacyStatusPublic;
        _embedHtml = @"";
        _itemCount = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#playlist";
        _etag = @"";
        _identifier = @"";
        _snippet = [[MABYT3_PlayListSnippet alloc] init];
        //_contentDetails = [[MABYT3_PlayListContentDetails alloc] init];
        _privacyStatus = kYTPrivacyStatusPublic;
        _embedHtml = @"";
        _itemCount = 0;
        
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
            _snippet = [[MABYT3_PlayListSnippet alloc] initFromDictionary:[dict objectForKey:@"snippet"]];
        }
        if ([dict objectForKey:@"contentDetails"]) {
            //_contentDetails = [[MABYT3_PlayListContentDetails alloc] initFromDictionary:[dict objectForKey:@"contentDetails"]];
            NSDictionary *dict2 = [dict objectForKey:@"contentDetails"];
            if ([dict2 objectForKey:@"itemCount"]) {
                _itemCount = [[dict2 objectForKey:@"itemCount"] unsignedIntegerValue];
            }
        }
        if ([dict objectForKey:@"status"]) {
            NSDictionary *dict2 = [dict objectForKey:@"status"];
            if ([dict2 objectForKey:@"privacyStatus"]) {
                _privacyStatus = [self privacyStatusFromString:[dict2 objectForKey:@"privacyStatus"]];
            }
        }
        if ([dict objectForKey:@"player"]) {
            NSDictionary *dict2 = [dict objectForKey:@"player"];
            if ([dict2 objectForKey:@"privacyStatus"]) {
                _embedHtml = [dict2 objectForKey:@"embedHtml"];
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
