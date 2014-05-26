//
//  MAB_GLink.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAB_GLink : NSObject

@property (strong, nonatomic) NSString *rel;
@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) NSString *href;
@property (nonatomic) NSUInteger countHint;

- (id) initFromDictionary:(NSDictionary *)textdict;

@end
