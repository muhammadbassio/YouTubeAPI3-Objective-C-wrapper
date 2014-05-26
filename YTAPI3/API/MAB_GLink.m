//
//  MAB_GLink.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MAB_GLink.h"

@implementation MAB_GLink

- (id) init {
    
    self = [super init];
    if (self) {
        _rel = @"";
        _type = @"";
        _href = @"";
        _countHint = 0;
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)textdict {
    
    self = [super init];
    if (self) {
        _rel = @"";
        _type = @"";
        _href = @"";
        
        if ([textdict objectForKey:@"rel"]) {
            _rel = [textdict objectForKey:@"rel"];
        }
        if ([textdict objectForKey:@"type"]) {
            _type = [textdict objectForKey:@"type"];
        }
        if ([textdict objectForKey:@"href"]) {
            _href = [textdict objectForKey:@"href"];
        }
        if ([textdict objectForKey:@"countHint"]) {
            _countHint = [[textdict objectForKey:@"countHint"] integerValue];
        }
        
    }
    return self;
}


@end
