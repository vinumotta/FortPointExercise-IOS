//
//  FPUser.h
//  FortPointExercise
//
//  Created by Jeff O'Leary on 9/25/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FPUser : NSObject
@property (nonatomic, retain) NSString *userFirstName;
@property (nonatomic, retain) NSString *userLastName;
@property (nonatomic, retain) NSString *userEmail;
@property (nonatomic, retain) NSDate *userCreatedAt;

- (id)initWithJSONDict:(NSDictionary *)jsonDict;
@end
