//
//  MABYT3_ChannelSectionContentDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channelSections#contentDetails
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ChannelSectionContentDetails : NSObject

@property (strong, nonatomic) NSMutableArray *playlists;
@property (strong, nonatomic) NSMutableArray *channels;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
