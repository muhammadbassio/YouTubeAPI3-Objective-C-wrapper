//
//  MABYT3_VideoCategory.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/videoCategories#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_VideoCategory : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSString *channelId;
@property (strong, nonatomic) NSString *title;
@property (nonatomic) BOOL assignable;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
