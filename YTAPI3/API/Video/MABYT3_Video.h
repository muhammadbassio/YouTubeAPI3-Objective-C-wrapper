//
//  MABYT3_Video.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/videos#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_VideoSnippet.h"
#import "MABYT3_VideoContentDetails.h"
#import "MABYT3_VideoStatistics.h"
#import "MABYT3_VideoStatus.h"
#import "MABYT3_VideoLiveStreamingDetails.h"

@interface MABYT3_Video : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic, readonly) MABYT3_VideoSnippet *snippet;
@property (strong, nonatomic, readonly) MABYT3_VideoContentDetails *contentDetails;
@property (strong, nonatomic, readonly) MABYT3_VideoStatistics *statistics;
@property (strong, nonatomic, readonly) MABYT3_VideoStatus *status;
@property (strong, nonatomic) NSString *embedHtml;

@property (strong, nonatomic) MABYT3_VideoLiveStreamingDetails *liveStreamingDetails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
