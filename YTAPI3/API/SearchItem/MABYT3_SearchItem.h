//
//  MABYT3_SearchItem.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/search#properties
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_ResourceId.h"
#import "MABYT3_SearchItemSnippet.h"

@interface MABYT3_SearchItem : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) MABYT3_ResourceId *identifier;
@property (strong, nonatomic) MABYT3_SearchItemSnippet *snippet;

- (id) initFromDictionary:(NSDictionary *)dict;


@end
