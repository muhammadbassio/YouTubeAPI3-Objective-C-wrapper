//
//  MAB_GoogleAccessToken.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MAB_GoogleAccessToken.h"

@implementation MAB_GoogleAccessToken

- (id) init {
    
    self = [super init];
    if (self) {
        _accessToken = @"";
        _tokenType = @"";
        _expiresIn = 0;
        _refreshToken = @"";
        _tokenTime = [NSDate date];
    }
    return self;
}

- (id) initFromDictionary:(NSDictionary *)textdict {
    
    self = [super init];
    if (self) {
        _accessToken = @"";
        _tokenType = @"";
        _expiresIn = 0;
        _refreshToken = @"";
        _tokenTime = [NSDate date];
        
        if ([textdict objectForKey:@"access_token"]) {
            _accessToken = [textdict objectForKey:@"access_token"];
        }
        if ([textdict objectForKey:@"token_type"]) {
            _tokenType = [textdict objectForKey:@"token_type"];
        }
        if ([textdict objectForKey:@"expires_in"]) {
            _expiresIn = [[textdict objectForKey:@"expires_in"] integerValue];
        }
        if ([textdict objectForKey:@"refresh_token"]) {
            _refreshToken = [textdict objectForKey:@"refresh_token"];
        }
        
    }
    return self;
}

- (void) refreshToken:(NSDictionary *)textdict {
    
    if ([textdict objectForKey:@"access_token"]) {
        _accessToken = [textdict objectForKey:@"access_token"];
    }
    if ([textdict objectForKey:@"token_type"]) {
        _tokenType = [textdict objectForKey:@"token_type"];
    }
    if ([textdict objectForKey:@"expires_in"]) {
        _expiresIn = [[textdict objectForKey:@"expires_in"] integerValue];
    }
    
}


- (void)encodeWithCoder:(NSCoder *)encoder {
    //Encode properties, other class variables, etc
    [encoder encodeObject:_accessToken forKey:@"atoken"];
    [encoder encodeObject:_tokenType forKey:@"tokentype"];
    [encoder encodeObject:[NSNumber numberWithInteger:_expiresIn] forKey:@"expiresin"];
    [encoder encodeObject:_refreshToken forKey:@"rtoken"];
    [encoder encodeObject:_tokenTime forKey:@"tokentime"];
    
}

- (id)initWithCoder:(NSCoder *)decoder {
    if((self = [super init])) {
        //decode properties, other class vars
        _accessToken = [decoder decodeObjectForKey:@"atoken"];
        _tokenType = [decoder decodeObjectForKey:@"tokentype"];
        _expiresIn = [[decoder decodeObjectForKey:@"expiresin"] integerValue];
        _refreshToken = [decoder decodeObjectForKey:@"rtoken"];
        _tokenTime = [decoder decodeObjectForKey:@"tokentime"];
    }
    return self;
}

@end
