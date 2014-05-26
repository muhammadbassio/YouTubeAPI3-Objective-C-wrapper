//
//  MABYT3_Activity.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/activities#properties
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ActivitySnippet.h"
#import "MABYT3_ActivityContentDetails.h"

@interface MABYT3_Activity : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) MABYT3_ActivitySnippet *snippet;
@property (strong, nonatomic) MABYT3_ActivityContentDetails *contentDetails;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
