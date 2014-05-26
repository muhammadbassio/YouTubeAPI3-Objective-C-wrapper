//
//  MABYT3_LocalizedImageURL.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/1/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_LocalizedPropertyURL : NSObject

@property (strong, nonatomic) NSString *URLvalue;
@property (strong, nonatomic) NSString *language;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
