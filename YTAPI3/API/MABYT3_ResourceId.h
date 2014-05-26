//
//  MABYT3_ResourceId.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ResourceId : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *videoId;
@property (strong, nonatomic) NSString *playlistId;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
