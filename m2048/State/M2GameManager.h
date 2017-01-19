//
//  M2GameManager.h
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M2Scene;
@class M2Grid;

typedef NS_ENUM(NSInteger, M2Direction) {
  M2DirectionUp,
  M2DirectionLeft,
  M2DirectionDown,
  M2DirectionRight
};

@interface M2GameManager : NSObject

/**
 * Starts a new session with the provided scene.
 *
 * @param scene The scene in which the game happens.
 */
- (void)startNewSessionWithScene:(M2Scene *)scene;

/**
 * Moves all movable tiles to the desired direction, then add one more tile to the grid.
 * Also refreshes score and checks game status (won/lost).
 *
 * @param direction The direction of the move (up, right, down, left).
 */
- (void)moveToDirection:(M2Direction)direction;

@end
