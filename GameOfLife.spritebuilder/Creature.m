//
//  Creature.m
//  GameOfLife
//
//  Created by Prachi Bodas on 6/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (instancetype)initCreature
{
    // since we made Creature inherit from CCSprite, 'super' below refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if (self) {
        self.isAlive = YES;//change back to no later
    }else
    {
        NSLog(@"null creature"); // debug
    }
    
    return self;
}


- (void)setIsAlive:(BOOL)newState
{
    //when you create an @property as we did in the .h, an instance variable with a leading underscore is automatically created for you
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCNode. CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visibility property
    self.visible = _isAlive;
}

@end
