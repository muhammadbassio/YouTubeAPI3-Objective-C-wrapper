//
//  MABYT3_ChannelBrandingSettingsWatch.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings.watch
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ChannelBrandingSettingsWatch : NSObject

@property (strong, nonatomic) NSString *textColor;
@property (strong, nonatomic) NSString *backgroundColor;
@property (strong, nonatomic) NSString *featuredPlaylistId;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
