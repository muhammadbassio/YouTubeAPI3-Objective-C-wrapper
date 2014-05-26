//
//  MABYT3_PlayListItemSnippet.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlistItems#snippet
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"
#import "MABYT3_Thumbnail.h"
#import "MABYT3_ResourceId.h"

@interface MABYT3_PlayListItemSnippet : NSObject

@property (strong, nonatomic) MAB_GDate *publishedAt;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSMutableDictionary *thumbnails;
@property (strong, nonatomic) NSString *channelTitle;
@property (strong, nonatomic) NSString *playlistId;
@property (nonatomic) NSUInteger position;
@property (strong, nonatomic) MABYT3_ResourceId *resourceId;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
