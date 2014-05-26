//
//  MABYT3_ChannelBrandingSettingsImage.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/channels#brandingSettings.image
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_PropertyURL.h"

@interface MABYT3_ChannelBrandingSettingsImage : NSObject

@property (strong, nonatomic) NSString *bannerImageUrl;                                     // 1060 x 175
@property (strong, nonatomic) NSString *bannerMobileImageUrl;                               //  640 x 175
@property (strong, nonatomic) MABYT3_PropertyURL *backgroundImageUrl;                       // 1200 x 615
@property (strong, nonatomic) MABYT3_PropertyURL *largeBrandedBannerImageImapScript;        //
@property (strong, nonatomic) MABYT3_PropertyURL *largeBrandedBannerImageUrl;               //  854 x 70
@property (strong, nonatomic) MABYT3_PropertyURL *smallBrandedBannerImageImapScript;        //
@property (strong, nonatomic) MABYT3_PropertyURL *smallBrandedBannerImageUrl;               //  640 x 70
@property (strong, nonatomic) NSString *watchIconImageUrl;                                  //  170 x 25 (max width, constant height)
@property (strong, nonatomic) NSString *trackingImageUrl;                                   //    1 x 1
@property (strong, nonatomic) NSString *bannerTabletLowImageUrl;                            // 1138 x 188
@property (strong, nonatomic) NSString *bannerTabletImageUrl;                               // 1707 x 283
@property (strong, nonatomic) NSString *bannerTabletHdImageUrl;                             // 2276 x 377
@property (strong, nonatomic) NSString *bannerTabletExtraHdImageUrl;                        // 2560 x 424
@property (strong, nonatomic) NSString *bannerMobileLowImageUrl;                            //  320 x 88
@property (strong, nonatomic) NSString *bannerMobileMediumHdImageUrl;                       //  960 x 263
@property (strong, nonatomic) NSString *bannerMobileHdImageUrl;                             // 1280 x 360
@property (strong, nonatomic) NSString *bannerMobileExtraHdImageUrl;                        // 1440 x 395
@property (strong, nonatomic) NSString *bannerTvImageUrl;                                   // 2120 x 1192
@property (strong, nonatomic) NSString *bannerTvLowImageUrl;                                //  854 x 480
@property (strong, nonatomic) NSString *bannerTvMediumImageUrl;                             // 1280 x 720
@property (strong, nonatomic) NSString *bannerTvHighImageUrl;                               // 1920 x 1080
@property (strong, nonatomic) NSString *bannerExternalUrl;                                  // used in updating only (i.e. insert not list)

- (id) initFromDictionary:(NSDictionary *)dict;

@end
