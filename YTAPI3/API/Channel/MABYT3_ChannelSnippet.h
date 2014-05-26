//
//  MABYT3_ChannelSnippet.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#snippet
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"
#import "MABYT3_Thumbnail.h"

@interface MABYT3_ChannelSnippet : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) MAB_GDate *publishedAt;
@property (strong, nonatomic) NSMutableDictionary *thumbnails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
