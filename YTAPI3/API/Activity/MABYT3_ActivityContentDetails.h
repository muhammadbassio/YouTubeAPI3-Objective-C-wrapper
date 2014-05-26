//
//  MABYT3_ActivityContentDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#contentDetails
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ActivityPlaylistItem.h"
#import "MABYT3_ActivityRecommendation.h"
#import "MABYT3_ActivitySocial.h"

@interface MABYT3_ActivityContentDetails : NSObject

@property (strong, nonatomic) MABYT3_ResourceId *upload;
@property (strong, nonatomic) MABYT3_ResourceId *like;
@property (strong, nonatomic) MABYT3_ResourceId *favorite;
@property (strong, nonatomic) MABYT3_ResourceId *comment;
@property (strong, nonatomic) MABYT3_ResourceId *subscription;
@property (strong, nonatomic) MABYT3_ResourceId *bulletin;
@property (strong, nonatomic) MABYT3_ResourceId *channelItem;
@property (strong, nonatomic) MABYT3_ActivityPlaylistItem *playlistItem;
@property (strong, nonatomic) MABYT3_ActivityRecommendation *recommendation;
@property (strong, nonatomic) MABYT3_ActivitySocial *social;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
