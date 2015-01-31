#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    //add obstacle
    [self addObstacle];
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    //run every frame
    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f)
    {
        //add new obstacle
        [self addObstacle];
        
        //reset timer
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    //when player touches screen
    [character flap];
}

@end
