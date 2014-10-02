//
//  FPEvent.h
//  FortPointExercise
//
//  Created by Stephanie Viccari on 10/1/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FPEvent : NSObject
@property (nonatomic, retain) NSString *eventTitle;
@property (nonatomic, retain) NSString *eventDescription;
@property (nonatomic, retain) NSString *eventLocation;
@property (nonatomic, retain) NSDate *eventEventStart;
@property (nonatomic, retain) NSDate *eventEventEnd;
@property (nonatomic, retain) NSDate *eventCreatedAt;

- (id)initWithJSONDict:(NSDictionary *)jsonDict;
@end
