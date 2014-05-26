//
//  MABYT3_ChannelSectionSnippet.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channelSections#snippet
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"

@interface MABYT3_ChannelSectionSnippet : NSObject

@property (nonatomic) YTChannelSectioType type;
@property (nonatomic) YTChannelSectioStyle style;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *title;
@property (nonatomic) unsigned long position;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
