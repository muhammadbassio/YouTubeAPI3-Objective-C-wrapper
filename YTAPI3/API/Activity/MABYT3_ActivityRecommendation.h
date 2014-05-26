//
//  MABYT3_ActivityRecommendation.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#recommendation
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ResourceId.h"

@interface MABYT3_ActivityRecommendation : NSObject

@property (strong, nonatomic) MABYT3_ResourceId *resourceId;
@property (strong, nonatomic) NSString *reason;
@property (strong, nonatomic) MABYT3_ResourceId *seedResourceId;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
