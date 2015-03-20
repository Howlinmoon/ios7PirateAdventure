//
//  ViewController.m
//  Pirate Adventure
//
//  Created by jim Veneskey on 3/13/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"

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
    [self updateTile];
    [self updateButtons];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {


}

// clicking the button updates our co-ordinates correspondingly
- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {

    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}


-(void) updateTile {
    Tile * tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
}


-(void) updateButtons {
    self.westButton.hidden = [self  tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self  tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self  tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self  tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}


-(BOOL) tileExistsAtPoint:(CGPoint) point {
    // verify that the passed point has co-ords within our 3x4 array of tiles - self.tiles count - returns qty of elements in that array
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    } else {
        return YES;
    }
}


@end
