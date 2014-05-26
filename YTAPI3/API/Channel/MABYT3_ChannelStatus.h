//
//  MABYT3_ChannelStatus.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#status
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_enums.h"

@interface MABYT3_ChannelStatus : NSObject

@property (nonatomic) YTPrivacyStatus privacyStatus;
@property (nonatomic) BOOL isLinked;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
