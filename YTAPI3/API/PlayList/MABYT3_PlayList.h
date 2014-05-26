//
//  MABYT3_PlayList.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/playlists#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"
#import "MABYT3_PlayListSnippet.h"
#import "MABYT3_PlayListContentDetails.h"

@interface MABYT3_PlayList : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) MABYT3_PlayListSnippet *snippet;
//@property (strong, nonatomic) MABYT3_PlayListContentDetails *contentDetails;
@property (nonatomic) YTPrivacyStatus privacyStatus;
@property (strong, nonatomic) NSString *embedHtml;
@property (nonatomic) NSUInteger itemCount;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
