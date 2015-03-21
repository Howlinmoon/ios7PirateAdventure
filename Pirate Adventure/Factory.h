//
//  Factory.h
//  Pirate Adventure
//
//  Created by jim Veneskey on 3/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface Factory : NSObject

-(NSArray *) tiles;
-(Character *) character;



@end
