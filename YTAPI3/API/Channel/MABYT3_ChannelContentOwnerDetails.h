//
//  MABYT3_ChannelContentOwnerDetails.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#contentOwnerDetails
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"

@interface MABYT3_ChannelContentOwnerDetails : NSObject

@property (strong, nonatomic) NSString *contentOwner;
@property (strong, nonatomic) MAB_GDate *timeLinked;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
