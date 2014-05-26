//
//  MABYT3_ChannelContentDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#contentDetails
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ChannelContentDetails : NSObject

@property (strong, nonatomic) NSString *googlePlusUserId;
@property (strong, nonatomic) NSMutableDictionary *relatedPlaylists;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
