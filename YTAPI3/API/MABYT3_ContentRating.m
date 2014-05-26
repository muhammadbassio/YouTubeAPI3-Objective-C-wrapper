//
//  MABYT3_ContentRating.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MABYT3_ContentRating.h"

@implementation MABYT3_ContentRating

- (id) init {
    
    self = [super init];
    if (self) {
        _mpaaRating = @"mpaaUnrated";
        _tvpgRating = @"tvpgUnrated";
        _bbfcRating = @"bbfcUnrated";
        _chvrsRating = @"chvrsUnrated";
        _eirinRating = @"eirinUnrated";
        _cbfcRating = @"cbfcUnrated";
        _fmocRating = @"fmocUnrated";
        _icaaRating = @"icaaUnrated";
        _acbRating = @"acbUnrated";
        _oflcRating = @"oflcUnrated";
        _fskRating = @"fskUnrated";
        _kmrbRating = @"kmrbUnrated";
        _djctqRating = @"djctqUnrated";
        _russiaRating = @"russiaUnrated";
        _rtcRating = @"rtcUnrated";
        _ytRating = @"";
        _mibacRating = @"mibacUnrated";
        _catvRating = @"catvUnrated";
        _catvfrRating = @"catvfrUnrated";
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)dict {
    
    self = [super init];
    if (self) {
        _mpaaRating = @"mpaaUnrated";
        _tvpgRating = @"tvpgUnrated";
        _bbfcRating = @"bbfcUnrated";
        _chvrsRating = @"chvrsUnrated";
        _eirinRating = @"eirinUnrated";
        _cbfcRating = @"cbfcUnrated";
        _fmocRating = @"fmocUnrated";
        _icaaRating = @"icaaUnrated";
        _acbRating = @"acbUnrated";
        _oflcRating = @"oflcUnrated";
        _fskRating = @"fskUnrated";
        _kmrbRating = @"kmrbUnrated";
        _djctqRating = @"djctqUnrated";
        _russiaRating = @"russiaUnrated";
        _rtcRating = @"rtcUnrated";
        _ytRating = @"";
        _mibacRating = @"mibacUnrated";
        _catvRating = @"catvUnrated";
        _catvfrRating = @"catvfrUnrated";
        
        if ([dict objectForKey:@"mpaaRating"]) {
            _mpaaRating = [dict objectForKey:@"mpaaRating"];
        }
        if ([dict objectForKey:@"tvpgRating"]) {
            _tvpgRating = [dict objectForKey:@"tvpgRating"];
        }
        if ([dict objectForKey:@"bbfcRating"]) {
            _bbfcRating = [dict objectForKey:@"bbfcRating"];
        }
        if ([dict objectForKey:@"chvrsRating"]) {
            _chvrsRating = [dict objectForKey:@"chvrsRating"];
        }
        if ([dict objectForKey:@"eirinRating"]) {
            _eirinRating = [dict objectForKey:@"eirinRating"];
        }
        if ([dict objectForKey:@"cbfcRating"]) {
            _cbfcRating = [dict objectForKey:@"cbfcRating"];
        }
        if ([dict objectForKey:@"fmocRating"]) {
            _fmocRating = [dict objectForKey:@"fmocRating"];
        }
        if ([dict objectForKey:@"icaaRating"]) {
            _icaaRating = [dict objectForKey:@"icaaRating"];
        }
        if ([dict objectForKey:@"acbRating"]) {
            _acbRating = [dict objectForKey:@"acbRating"];
        }
        if ([dict objectForKey:@"oflcRating"]) {
            _oflcRating = [dict objectForKey:@"oflcRating"];
        }
        if ([dict objectForKey:@"fskRating"]) {
            _fskRating = [dict objectForKey:@"fskRating"];
        }
        if ([dict objectForKey:@"kmrbRating"]) {
            _kmrbRating = [dict objectForKey:@"kmrbRating"];
        }
        if ([dict objectForKey:@"djctqRating"]) {
            _djctqRating = [dict objectForKey:@"djctqRating"];
        }
        if ([dict objectForKey:@"russiaRating"]) {
            _russiaRating = [dict objectForKey:@"russiaRating"];
        }
        if ([dict objectForKey:@"rtcRating"]) {
            _rtcRating = [dict objectForKey:@"rtcRating"];
        }
        if ([dict objectForKey:@"ytRating"]) {
            _ytRating = [dict objectForKey:@"ytRating"];
        }
        if ([dict objectForKey:@"mibacRating"]) {
            _mibacRating = [dict objectForKey:@"mibacRating"];
        }
        if ([dict objectForKey:@"catvRating"]) {
            _catvRating = [dict objectForKey:@"catvRating"];
        }
        if ([dict objectForKey:@"catvfrRating"]) {
            _catvfrRating = [dict objectForKey:@"catvfrRating"];
        }
        
    }
    return self;
}

@end
