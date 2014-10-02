//
//  FPEvent.m
//  FortPointExercise
//
//  Created by Stephanie Viccari on 10/1/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import "FPEvent.h"

@implementation FPEvent
- (id)initWithJSONDict:(NSDictionary *)jsonDict {
    
    self = [super init];
    if (self) {
        [self addDataFromJSONDict:jsonDict];
    }
    return self;
}

- (void)addDataFromJSONDict:(NSDictionary *)jsonDict {
    if (nil != jsonDict[@"title"]) self.eventTitle = jsonDict[@"title"];
    if (nil != jsonDict[@"description"]) self.eventDescription = jsonDict[@"description"];
    if (nil != jsonDict[@"location"]) self.eventLocation = jsonDict[@"location"];
    if (nil != jsonDict[@"event_start"]) self.eventEventStart = jsonDict[@"event_start"];
    if (nil != jsonDict[@"event_end"]) self.eventEventEnd = jsonDict[@"event_end"];
    if (nil != jsonDict[@"created_at"]) self.eventCreatedAt = jsonDict[@"created_at"];
}

@end
