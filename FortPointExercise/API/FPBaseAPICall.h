//
//  FPBaseAPICall.h
//  FortPointExercise
//
//  Created by Vineet Sathyan on 10/8/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AFHTTPRequestOperation;

@interface FPBaseAPICall : NSObject
- (void)getWithParameters:(NSDictionary *)params
             successBlock:(void(^)(AFHTTPRequestOperation *operation, id responseObject))successBlock
             failureBlock:(void(^)(AFHTTPRequestOperation *operation, NSError *error))errorBlock;
@end
