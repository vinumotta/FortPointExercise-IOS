//
//  FPEventsTableViewCell.h
//  FortPointExercise
//
//  Created by Vineet Sathyan on 10/22/14.
//  Copyright (c) 2014 FPE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FPEventsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (weak, nonatomic) IBOutlet UILabel *organizer;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *infoButton;

@end
