//
//  MABYT3_ActivitySocial.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#social
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ResourceId.h"

@interface MABYT3_ActivitySocial : NSObject

@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) MABYT3_ResourceId *resourceId;
@property (strong, nonatomic) NSString *author;
@property (strong, nonatomic) NSString *referenceUrl;
@property (strong, nonatomic) NSString *imageUrl;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
