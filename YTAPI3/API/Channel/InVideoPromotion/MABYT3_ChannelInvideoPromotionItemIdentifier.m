//
//  MABYT3_ChannelInvideoPromotionItemIdentifier.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelInvideoPromotionItemIdentifier.h"

@implementation MABYT3_ChannelInvideoPromotionItemIdentifier

- (id) init {
    
    self = [super init];
    if (self) {
        _type = kYTPromotedResourceTypeVideo;
        _videoId = @"";
        _websiteUrl = @"";
        _recentlyUploadedBy = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _type = kYTPromotedResourceTypeVideo;
        _videoId = @"";
        _websiteUrl = @"";
        _recentlyUploadedBy = @"";
        
        if ([dict objectForKey:@"type"]) {
            _type = [self resourceTypeFromString:[dict objectForKey:@"type"]];
        }
        if ([dict objectForKey:@"videoId"]) {
            _videoId = [dict objectForKey:@"videoId"];
        }
        if ([dict objectForKey:@"websiteUrl"]) {
            _websiteUrl = [dict objectForKey:@"websiteUrl"];
        }
        if ([dict objectForKey:@"recentlyUploadedBy"]) {
            _recentlyUploadedBy = [dict objectForKey:@"recentlyUploadedBy"];
        }
    }
    return self;
}

- (YTPromotedResourceType) resourceTypeFromString:(NSString *)resString {
    
    YTPromotedResourceType retVal = kYTPromotedResourceTypeVideo;
    
    if ([resString isEqualToString:@"recentUpload"]) {
        retVal = kYTPromotedResourceTypeRecentUpload;
    }
    else if ([resString isEqualToString:@"website"]) {
        retVal = kYTPromotedResourceTypeWebsite;
    }
    return retVal;
}

@end
