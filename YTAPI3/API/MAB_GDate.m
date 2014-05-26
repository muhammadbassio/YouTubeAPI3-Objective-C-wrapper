//
//  MAB_Tuber_YouTubeDate.m
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 4/30/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import "MAB_GDate.h"

@implementation MAB_GDate

- (id) init {
    
    self = [super init];
    if (self) {
        _day = 1;
        _month = 1;
        _year = 2000;
        _hour = 0;
        _minute = 0;
        _second = 0;
        _stringValue = @"2000-01-01 00:00:00";
        _dateValue = [NSDate date];
    }
    return self;
}

- (id) initFromString:(NSString *)textString {
    
    self = [super init];
    if (self) {
        
        _day = 1;
        _month = 1;
        _year = 2000;
        _hour = 0;
        _minute = 0;
        _second = 0;
        _stringValue = @"2000-01-01 00:00:00";
        _dateValue = [NSDate date];
        
        _stringValue = [[textString stringByReplacingOccurrencesOfString:@"T" withString:@" "] stringByReplacingOccurrencesOfString:@"Z" withString:@""];
        
        NSArray *textArray = [[textString stringByReplacingOccurrencesOfString:@"Z" withString:@""] componentsSeparatedByString:@"T"];
        NSArray *dateArray = [[textArray objectAtIndex:0] componentsSeparatedByString:@"-"];
        NSArray *timeArray = [[textArray objectAtIndex:1] componentsSeparatedByString:@":"];
        
        NSNumberFormatter * formater = [[NSNumberFormatter alloc] init];
        [formater setNumberStyle:NSNumberFormatterDecimalStyle];
        
        _year = [[dateArray objectAtIndex:0] integerValue];
        _month = [[dateArray objectAtIndex:1] integerValue];
        _day = [[dateArray objectAtIndex:2] integerValue];
        
        _hour = [[timeArray objectAtIndex:0] integerValue];
        _minute = [[timeArray objectAtIndex:1] integerValue];
        _second = [[timeArray objectAtIndex:2] integerValue];
        
        NSInteger secondsFromGMT = [[NSTimeZone localTimeZone] secondsFromGMT];
        NSDateComponents *components = [[NSDateComponents alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        [cal setTimeZone:[NSTimeZone localTimeZone]];
        
        [components setDay:_day];
        [components setMonth:_month];
        [components setYear:_year];
        [components setHour:_hour];
        [components setMinute:_minute];
        [components setSecond:_second];
        
        _dateValue = [[cal dateFromComponents:components] dateByAddingTimeInterval:secondsFromGMT];
        _min_string = [NSString stringWithFormat:@"%lu %@ %lu", (unsigned long)_day, [self monthString:_month], (unsigned long)_year];
        
    }
    return self;
}


- (NSString *)monthString:(NSUInteger)mnth {
    
    NSString *retVal = @"Jan";
    
    switch (mnth) {
        case 2:
        {
            retVal = @"Feb";
            break;
        }
        case 3:
        {
            retVal = @"Mar";
            break;
        }
        case 4:
        {
            retVal = @"Apr";
            break;
        }
        case 5:
        {
            retVal = @"May";
            break;
        }
        case 6:
        {
            retVal = @"Jun";
            break;
        }
        case 7:
        {
            retVal = @"Jul";
            break;
        }
        case 8:
        {
            retVal = @"Aug";
            break;
        }
        case 9:
        {
            retVal = @"Sep";
            break;
        }
        case 10:
        {
            retVal = @"Oct";
            break;
        }
        case 11:
        {
            retVal = @"Nov";
            break;
        }
        case 12:
        {
            retVal = @"Dec";
            break;
        }
        default:
            break;
    }
    
    return retVal;
}

@end
