//
//  ViewController.h
//  Pirate Adventure
//
//  Created by jim Veneskey on 3/13/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Instance vars
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;




// IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (strong, nonatomic) IBOutlet UILabel *healthLabel;

@property (strong, nonatomic) IBOutlet UILabel *damageLabel;


@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;

@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;

@property (strong, nonatomic) IBOutlet UIButton *northButton;

@property (strong, nonatomic) IBOutlet UIButton *westButton;

@property (strong, nonatomic) IBOutlet UIButton *southButton;

@property (strong, nonatomic) IBOutlet UIButton *eastButton;


// IBActions


- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;


@end
