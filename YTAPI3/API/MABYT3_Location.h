//
//  MABYT3_Location.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_Location : NSObject

@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
@property (nonatomic) double altitude;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
