//
//  MABYT3_VideoRecordingDetails.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/3/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MABYT3_Location.h"
#import "MAB_GDate.h"

@interface MABYT3_VideoRecordingDetails : NSObject

@property (strong, nonatomic) NSString *locationDescription;
@property (strong, nonatomic) MABYT3_Location *location;
@property (strong, nonatomic) MAB_GDate *recordingDate;

- (id) initFromDictionary:(NSDictionary *)dict;

@end
