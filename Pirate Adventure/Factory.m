//
//  Factory.m
//  Pirate Adventure
//
//  Created by jim Veneskey on 3/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *) tiles {

    // 0,0
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage.  You must stop the Evil Pirate Boss.  Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    Weapon *bluntedSword = [[Weapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take Sword";


    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    Armor *steelArmor = [[Armor alloc]init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take Armor";
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the Dock";
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"You have found a parrot, this can be used in your armor slot.  Parrots are a great defender and our fiercely loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    Armor *parrotArmor = [[Armor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.actionButtonName = @"Adopt Parrot";
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"You have stumbled apon a cache of Pirate weapons, would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    Weapon *pistolWeapon = [[Weapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.actionButtonName = @"Take Pistol";
    
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"You have been captured by Pirates and ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast.  Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"The legend of the deep, the mighty Kraken appears!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon Ship";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasure!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found.  Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim Deeper";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Your final face off with the Pirate Boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

// This creates an initial character with a health of 100,
// an armor type of cloak with a helath bonus of 5,
// and a weapon type of "Fists" with a damage of 10.
-(Character *) character {
    Character *character = [[Character alloc] init];
    character.health = 100;
    Armor *armor = [[Armor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    Weapon *weapon = [[Weapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    return character;
}

-(Boss *) boss {
    Boss *boss = [[Boss alloc] init];
    boss.health = 65;
    return boss;
}


@end
