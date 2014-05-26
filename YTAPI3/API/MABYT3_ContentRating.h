//
//  MABYT3_ContentRating.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_ContentRating : NSObject

@property (strong, nonatomic) NSString *mpaaRating;
@property (strong, nonatomic) NSString *tvpgRating;
@property (strong, nonatomic) NSString *bbfcRating;
@property (strong, nonatomic) NSString *chvrsRating;
@property (strong, nonatomic) NSString *eirinRating;
@property (strong, nonatomic) NSString *cbfcRating;
@property (strong, nonatomic) NSString *fmocRating;
@property (strong, nonatomic) NSString *icaaRating;
@property (strong, nonatomic) NSString *acbRating;
@property (strong, nonatomic) NSString *oflcRating;
@property (strong, nonatomic) NSString *fskRating;
@property (strong, nonatomic) NSString *kmrbRating;
@property (strong, nonatomic) NSString *djctqRating;
@property (strong, nonatomic) NSString *russiaRating;
@property (strong, nonatomic) NSString *rtcRating;
@property (strong, nonatomic) NSString *ytRating;
@property (strong, nonatomic) NSString *mibacRating;
@property (strong, nonatomic) NSString *catvRating;
@property (strong, nonatomic) NSString *catvfrRating;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
