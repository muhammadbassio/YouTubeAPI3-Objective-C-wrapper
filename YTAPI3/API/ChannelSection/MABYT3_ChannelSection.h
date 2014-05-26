//
//  MABYT3_ChannelSection.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channelSections#properties
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ChannelSectionSnippet.h"
#import "MABYT3_ChannelSectionContentDetails.h"


@interface MABYT3_ChannelSection : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic, readonly) MABYT3_ChannelSectionSnippet *snippet;
@property (strong, nonatomic, readonly) MABYT3_ChannelSectionContentDetails *contentDetails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
