//
//  MABYT3_Region.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/i18nRegions#properties
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_Region : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSString *gl;
@property (strong, nonatomic) NSString *name;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
