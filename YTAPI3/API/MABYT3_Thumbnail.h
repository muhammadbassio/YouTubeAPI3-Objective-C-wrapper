//
//  MABYT3_Thumbnail.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_Thumbnail : NSObject

@property (strong, nonatomic, readonly) NSString *url;
@property (nonatomic, readonly) NSUInteger width;
@property (nonatomic, readonly) NSUInteger height;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
