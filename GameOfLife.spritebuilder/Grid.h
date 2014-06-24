//
//  Grid.h
//  GameOfLife
//
//  Created by Prachi Bodas on 6/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Grid : CCSprite

@property (nonatomic, assign) int totalAlive; // total cells alive
@property (nonatomic, assign) int generation; // generation creatures are on

@end
