//
//  FPBaseAPICall.m
//  FortPointExercise
//
//  Created by Vineet Sathyan on 10/8/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import "FPBaseAPICall.h"
#import <AFNetworking.h>
@implementation FPBaseAPICall

- (void)getWithParameters:(NSDictionary *)params
             successBlock:(void(^)(AFHTTPRequestOperation *operation, id responseObject))successBlock
             failureBlock:(void(^)(AFHTTPRequestOperation *operation, NSError *error))errorBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://mysocial-api.herokuapp.com/events" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        successBlock(operation, responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        errorBlock(operation, error);
    }];
}

@end
