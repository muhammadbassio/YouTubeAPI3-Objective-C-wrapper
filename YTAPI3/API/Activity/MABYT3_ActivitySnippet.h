//
//  MABYT3_ActivitySnippet.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#snippet
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"
#import "MABYT3_Thumbnail.h"
#import "MABYT3_enums.h"

@interface MABYT3_ActivitySnippet : NSObject

@property (strong, nonatomic) MAB_GDate *publishedAt;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSMutableDictionary *thumbnails;
@property (strong, nonatomic) NSString *channelTitle;
@property (nonatomic) YTActivityFeedType type;
@property (strong, nonatomic) NSString *groupId;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
