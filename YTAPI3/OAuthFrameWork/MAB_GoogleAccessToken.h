//
//  MAB_GoogleAccessToken.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAB_GoogleAccessToken : NSObject

@property (strong, nonatomic) NSString *accessToken;
@property (strong, nonatomic) NSString *tokenType;
@property (nonatomic) NSUInteger expiresIn;
@property (strong, nonatomic) NSString *refreshToken;
@property (strong, nonatomic) NSDate *tokenTime;

- (id) initFromDictionary:(NSDictionary *)textdict;
- (void) refreshToken:(NSDictionary *)textdict;

@end
