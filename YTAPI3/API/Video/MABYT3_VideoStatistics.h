//
//  MABYT3_VideoStatistics.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_VideoStatistics : NSObject

@property (nonatomic) unsigned long viewCount;
@property (nonatomic) unsigned long likeCount;
@property (nonatomic) unsigned long dislikeCount;
@property (nonatomic) unsigned long favoriteCount;
@property (nonatomic) unsigned long commentCount;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
