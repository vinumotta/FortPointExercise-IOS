//
//  FPEventListViewController.m
//  FortPointExercise
//
//  Created by Vineet Sathyan on 8/26/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import "FPEventListViewController.h"
#import "FPBaseAPICall.h"

@interface FPEventListViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) IBOutlet UITableView *eventTableView;
@property (nonatomic, strong) NSArray *eventsArray;
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
        NSLog(@"responseObject = %@", responseObject);
        self.eventsArray = [[NSArray alloc] initWithArray:responseObject];
        [self.eventTableView reloadData];
    } failureBlock:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error = %@", error);
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- Table View delegate functions

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.eventsArray count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *defaultCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"eventCell"];
    
    NSString *eventTitle = [[self.eventsArray objectAtIndex:[indexPath row]] objectForKey:@"title"];
    [defaultCell.textLabel setText:eventTitle];
    
    NSString *descriptionTitle = [[self.eventsArray objectAtIndex:[indexPath row]] objectForKey:@"description"];
    [defaultCell.detailTextLabel setText:descriptionTitle];
    
    return defaultCell;
    
}

@end
