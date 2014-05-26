//
//  MAB_Tuber_YouTubeDate.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAB_GDate : NSObject

@property (nonatomic) NSUInteger day;
@property (nonatomic) NSUInteger month;
@property (strong, nonatomic) NSString *min_string;
@property (nonatomic) NSUInteger year;
@property (nonatomic) NSUInteger hour;
@property (nonatomic) NSUInteger minute;
@property (nonatomic) NSUInteger second;
@property (strong, nonatomic) NSString *stringValue;
@property (strong, nonatomic) NSDate *dateValue;

- (id) initFromString:(NSString *)textString;

@end
