//
//  MABYT3_PlayListItem.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlistItems#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"
#import "MABYT3_PlayListItemSnippet.h"
#import "MABYT3_PlayListItemContentDetails.h"

@interface MABYT3_PlayListItem : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) MABYT3_PlayListItemSnippet *snippet;
@property (strong, nonatomic) MABYT3_PlayListItemContentDetails *contentDetails;
@property (nonatomic) YTPrivacyStatus privacyStatus;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
