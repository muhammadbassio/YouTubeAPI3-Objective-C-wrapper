//
//  MABYT3_VideoStatus.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAB_GDate.h"
#import "MABYT3_enums.h"

@interface MABYT3_VideoStatus : NSObject

@property (strong, nonatomic) NSString *uploadStatus;
@property (strong, nonatomic) NSString *failureReason;
@property (strong, nonatomic) NSString *rejectionReason;
@property (nonatomic) YTPrivacyStatus privacyStatus;
@property (strong, nonatomic) MAB_GDate *publishedAt;
@property (nonatomic) YTVideoLicense license;
@property (nonatomic) BOOL embeddable;
@property (nonatomic) BOOL publicStatsViewable;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
