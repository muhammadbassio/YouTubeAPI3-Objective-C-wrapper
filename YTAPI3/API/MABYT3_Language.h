//
//  MABYT3_Language.h
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/i18nLanguages#properties
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MABYT3_Language : NSObject

@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSString *etag;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSString *hl;
@property (strong, nonatomic) NSString *name;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
