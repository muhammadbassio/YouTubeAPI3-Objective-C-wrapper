//
//  MABYT3_VideoSnippet.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"
#import "MABYT3_Thumbnail.h"
#import "MABYT3_enums.h"

@interface MABYT3_VideoSnippet : NSObject

@property (strong, nonatomic) MAB_GDate *publishedAt;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSMutableDictionary *thumbnails;
@property (strong, nonatomic) NSString *channelTitle;
@property (strong, nonatomic) NSMutableArray *tags;
@property (strong, nonatomic) NSString *categoryId;
@property (nonatomic) YTLiveBroadcastContent liveBroadcastContent;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
