//
//  MABYT3_ActivityPlaylistItem.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#playlistItem
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ResourceId.h"

@interface MABYT3_ActivityPlaylistItem : NSObject

@property (strong, nonatomic) NSString *playlistId;
@property (strong, nonatomic) NSString *playlistItemId;
@property (strong, nonatomic) MABYT3_ResourceId *resourceId;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
