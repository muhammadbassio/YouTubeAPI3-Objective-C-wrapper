//
//  MABYT3_RegionRestriction.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_RegionRestriction : NSObject

@property (strong, nonatomic) NSMutableArray *allowed;
@property (strong, nonatomic) NSMutableArray *blocked;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
