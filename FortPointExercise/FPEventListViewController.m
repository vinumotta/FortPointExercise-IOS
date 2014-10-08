//
//  FPEventListViewController.m
//  FortPointExercise
//
//  Created by Vineet Sathyan on 8/26/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import "FPEventListViewController.h"
#import "FPBaseAPICall.h"

@interface FPEventListViewController ()

@end

@implementation FPEventListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Events";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    FPBaseAPICall * sampleApiCall = [[FPBaseAPICall alloc] init];
    
    [sampleApiCall getWithParameters:nil successBlock:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"responseBoject = %@", responseObject);
        
    } failureBlock:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error = %@", error);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
