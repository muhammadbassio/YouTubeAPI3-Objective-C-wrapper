//
//  MABYT3_Language.m
//  YTAPI3Demo
//
//  Full Details : https://developers.google.com/youtube/v3/docs/i18nLanguages#properties
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_Language.h"

@implementation MABYT3_Language

- (id) init {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#i18nLanguage";
        _etag = @"";
        _identifier = @"";
        _hl = @"";
        _name = @"";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _kind = @"youtube#i18nLanguage";
        _etag = @"";
        _identifier = @"";
        _hl = @"";
        _name = @"";
        
        if ([dict objectForKey:@"kind"]) {
            _kind = [dict objectForKey:@"kind"];
        }
        if ([dict objectForKey:@"etag"]) {
            _etag = [dict objectForKey:@"etag"];
        }
        if ([dict objectForKey:@"id"]) {
            _identifier = [dict objectForKey:@"id"];
        }
        if ([dict objectForKey:@"snippet"]) {
            NSDictionary *dict2 = [dict objectForKey:@"snippet"];
            if ([dict2 objectForKey:@"hl"]) {
                _hl = [dict2 objectForKey:@"hl"];
            }
            if ([dict2 objectForKey:@"name"]) {
                _name = [dict2 objectForKey:@"name"];
            }
        }
        
    }
    return self;
}

@end
