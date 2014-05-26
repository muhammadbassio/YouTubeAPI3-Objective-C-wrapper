//
//  MABYT3_PlayListItemContentDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlistItems#contentDetails
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_PlayListItemContentDetails : NSObject

@property (strong, nonatomic) NSString *videoId;
@property (strong, nonatomic) NSString *startAt;
@property (strong, nonatomic) NSString *endAt;
@property (strong, nonatomic) NSString *note;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
