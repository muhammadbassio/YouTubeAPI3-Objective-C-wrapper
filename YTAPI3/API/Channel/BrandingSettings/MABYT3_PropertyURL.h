//
//  MABYT3_ImageURL.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_LocalizedPropertyURL.h"

@interface MABYT3_PropertyURL : NSObject

@property (strong, nonatomic) NSString *defaultURL;
@property (strong, nonatomic) NSMutableArray *localizedURLs;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
