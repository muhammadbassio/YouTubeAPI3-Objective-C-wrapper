//
//  MABYT3_ChannelBrandingSettingsImage.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings.image
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ChannelBrandingSettingsImage.h"

@implementation MABYT3_ChannelBrandingSettingsImage

- (id) init {
    
    self = [super init];
    if (self) {
        _bannerImageUrl = @"";
        _bannerMobileImageUrl = @"";
        _watchIconImageUrl = @"";
        _trackingImageUrl = @"";
        _bannerTabletLowImageUrl = @"";
        _bannerTabletImageUrl = @"";
        _bannerTabletHdImageUrl = @"";
        _bannerTabletExtraHdImageUrl = @"";
        _bannerMobileLowImageUrl = @"";
        _bannerMobileMediumHdImageUrl = @"";
        _bannerMobileHdImageUrl = @"";
        _bannerMobileExtraHdImageUrl = @"";
        _bannerTvImageUrl = @"";
        _bannerTvLowImageUrl = @"";
        _bannerTvMediumImageUrl = @"";
        _bannerTvHighImageUrl = @"";
        _bannerExternalUrl = @"";
        _backgroundImageUrl = [[MABYT3_PropertyURL alloc] init];
        _largeBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] init];
        _largeBrandedBannerImageUrl = [[MABYT3_PropertyURL alloc] init];
        _smallBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] init];
        _smallBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] init];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _bannerImageUrl = @"";
        _bannerMobileImageUrl = @"";
        _watchIconImageUrl = @"";
        _trackingImageUrl = @"";
        _bannerTabletLowImageUrl = @"";
        _bannerTabletImageUrl = @"";
        _bannerTabletHdImageUrl = @"";
        _bannerTabletExtraHdImageUrl = @"";
        _bannerMobileLowImageUrl = @"";
        _bannerMobileMediumHdImageUrl = @"";
        _bannerMobileHdImageUrl = @"";
        _bannerMobileExtraHdImageUrl = @"";
        _bannerTvImageUrl = @"";
        _bannerTvLowImageUrl = @"";
        _bannerTvMediumImageUrl = @"";
        _bannerTvHighImageUrl = @"";
        _bannerExternalUrl = @"";
        _backgroundImageUrl = [[MABYT3_PropertyURL alloc] init];
        _largeBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] init];
        _largeBrandedBannerImageUrl = [[MABYT3_PropertyURL alloc] init];
        _smallBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] init];
        _smallBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] init];
        
        if ([dict objectForKey:@"bannerImageUrl"]) {
            _bannerImageUrl = [dict objectForKey:@"bannerImageUrl"];
        }
        if ([dict objectForKey:@"bannerMobileImageUrl"]) {
            _bannerMobileImageUrl = [dict objectForKey:@"bannerMobileImageUrl"];
        }
        if ([dict objectForKey:@"watchIconImageUrl"]) {
            _watchIconImageUrl = [dict objectForKey:@"watchIconImageUrl"];
        }
        if ([dict objectForKey:@"trackingImageUrl"]) {
            _trackingImageUrl = [dict objectForKey:@"trackingImageUrl"];
        }
        if ([dict objectForKey:@"bannerTabletLowImageUrl"]) {
            _bannerTabletLowImageUrl = [dict objectForKey:@"bannerTabletLowImageUrl"];
        }
        if ([dict objectForKey:@"bannerTabletImageUrl"]) {
            _bannerTabletImageUrl = [dict objectForKey:@"bannerTabletImageUrl"];
        }
        if ([dict objectForKey:@"bannerTabletHdImageUrl"]) {
            _bannerTabletHdImageUrl = [dict objectForKey:@"bannerTabletHdImageUrl"];
        }
        if ([dict objectForKey:@"bannerTabletExtraHdImageUrl"]) {
            _bannerTabletExtraHdImageUrl = [dict objectForKey:@"bannerTabletExtraHdImageUrl"];
        }
        if ([dict objectForKey:@"bannerMobileLowImageUrl"]) {
            _bannerMobileLowImageUrl = [dict objectForKey:@"bannerMobileLowImageUrl"];
        }
        if ([dict objectForKey:@"bannerMobileMediumHdImageUrl"]) {
            _bannerMobileMediumHdImageUrl = [dict objectForKey:@"bannerMobileMediumHdImageUrl"];
        }
        if ([dict objectForKey:@"bannerMobileHdImageUrl"]) {
            _bannerMobileHdImageUrl = [dict objectForKey:@"bannerMobileHdImageUrl"];
        }
        if ([dict objectForKey:@"bannerMobileExtraHdImageUrl"]) {
            _bannerMobileExtraHdImageUrl = [dict objectForKey:@"bannerMobileExtraHdImageUrl"];
        }
        if ([dict objectForKey:@"bannerTvImageUrl"]) {
            _bannerTvImageUrl = [dict objectForKey:@"bannerTvImageUrl"];
        }
        if ([dict objectForKey:@"bannerTvLowImageUrl"]) {
            _bannerTvLowImageUrl = [dict objectForKey:@"bannerTvLowImageUrl"];
        }
        if ([dict objectForKey:@"bannerTvMediumImageUrl"]) {
            _bannerTvMediumImageUrl = [dict objectForKey:@"bannerTvMediumImageUrl"];
        }
        if ([dict objectForKey:@"bannerTvHighImageUrl"]) {
            _bannerTvHighImageUrl = [dict objectForKey:@"bannerTvHighImageUrl"];
        }
        if ([dict objectForKey:@"bannerExternalUrl"]) {
            _bannerExternalUrl = [dict objectForKey:@"bannerExternalUrl"];
        }
        
        
        if ([dict objectForKey:@"backgroundImageUrl"]) {
            _backgroundImageUrl = [[MABYT3_PropertyURL alloc] initFromDictionary:[dict objectForKey:@"backgroundImageUrl"]];
        }
        if ([dict objectForKey:@"largeBrandedBannerImageImapScript"]) {
            _largeBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] initFromDictionary:[dict objectForKey:@"largeBrandedBannerImageImapScript"]];
        }
        if ([dict objectForKey:@"largeBrandedBannerImageUrl"]) {
            _largeBrandedBannerImageUrl = [[MABYT3_PropertyURL alloc] initFromDictionary:[dict objectForKey:@"largeBrandedBannerImageUrl"]];
        }
        if ([dict objectForKey:@"smallBrandedBannerImageImapScript"]) {
            _smallBrandedBannerImageImapScript = [[MABYT3_PropertyURL alloc] initFromDictionary:[dict objectForKey:@"smallBrandedBannerImageImapScript"]];
        }
        if ([dict objectForKey:@"smallBrandedBannerImageUrl"]) {
            _smallBrandedBannerImageUrl = [[MABYT3_PropertyURL alloc] initFromDictionary:[dict objectForKey:@"smallBrandedBannerImageUrl"]];
        }
        
    }
    return self;
}

@end
