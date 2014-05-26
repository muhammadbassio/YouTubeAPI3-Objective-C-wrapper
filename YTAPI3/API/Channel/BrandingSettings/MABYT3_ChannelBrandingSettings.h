//
//  MABYT3_ChannelBrandingSettings.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ChannelBrandingSettingsChannel.h"
#import "MABYT3_ChannelBrandingSettingsWatch.h"
#import "MABYT3_ChannelBrandingSettingsImage.h"


@interface MABYT3_ChannelBrandingSettings : NSObject

@property (strong, nonatomic) MABYT3_ChannelBrandingSettingsChannel *channel;
@property (strong, nonatomic) MABYT3_ChannelBrandingSettingsWatch *watch;
@property (strong, nonatomic) MABYT3_ChannelBrandingSettingsImage *image;
@property (strong, nonatomic) NSMutableArray *hints;


- (id) initFromDictionary:(NSDictionary *)dict;

@end
