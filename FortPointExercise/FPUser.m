//
//  FPUser.m
//  FortPointExercise
//
//  Created by Jeff O'Leary on 9/25/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import "FPUser.h"

@implementation FPUser
- (id)initWithJSONDict:(NSDictionary *)jsonDict {
    
    self = [super init];
    if (self) {
        [self addDataFromJSONDict:jsonDict];
    }
    return self;
}

- (void)addDataFromJSONDict:(NSDictionary *)jsonDict {
    if (nil != jsonDict[@"first_name"]) self.userFirstName = jsonDict[@"first_name"];
    if (nil != jsonDict[@"last_name"]) self.userLastName = jsonDict[@"last_name"];
    if (nil != jsonDict[@"email"]) self.userEmail = jsonDict[@"email"];
    if (nil != jsonDict[@"created_at"]) self.userCreatedAt = jsonDict[@"created_at"];
}

@end
