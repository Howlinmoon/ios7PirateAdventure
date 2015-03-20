//
//  ViewController.m
//  Pirate Adventure
//
//  Created by jim Veneskey on 3/13/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Factory *factory = [[Factory alloc] init];
    self.tiles = [factory tiles];
    //NSLog(@"%@", self.tiles);
    self.currentPoint = CGPointMake(0, 0);
    NSLog(@"%f, %f", self.currentPoint.x, self.currentPoint.y);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(UIButton *)sender {
}

- (IBAction)westButtonPressed:(UIButton *)sender {
}

- (IBAction)southButtonPressed:(UIButton *)sender {
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
}
@end
