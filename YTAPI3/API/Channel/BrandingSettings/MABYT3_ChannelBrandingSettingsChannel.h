//
//  MABYT3_ChannelBrandingSettingsChannel.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings.channel
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ChannelBrandingSettingsChannel : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *keywords;
@property (strong, nonatomic) NSString *defaultTab;
@property (strong, nonatomic) NSString *trackingAnalyticsAccountId;
@property (nonatomic) BOOL moderateComments;
@property (nonatomic) BOOL showRelatedChannels;
@property (nonatomic) BOOL showBrowseView;
@property (strong, nonatomic) NSString *featuredChannelsTitle;
@property (strong, nonatomic) NSMutableArray *featuredChannelsUrls;
@property (strong, nonatomic) NSString *unsubscribedTrailer;
@property (strong, nonatomic) NSString *profileColor;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
