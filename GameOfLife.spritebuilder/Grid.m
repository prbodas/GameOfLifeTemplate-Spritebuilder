#import "Grid.h"
#import "Creature.h"

// these are variables that cannot be changed
static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
    
    -(id) init
    {
        self = [super init];
        if (self)
        {
            self.totalAlive = 0;
            self.generation = 0;
        }
        return self;
    }
    
    -(void)onEnter
    {
        [super onEnter];
        
        [self setupGrid];
        
        // accept touches on the grid
        self.userInteractionEnabled = YES;
    }
    
}

@end