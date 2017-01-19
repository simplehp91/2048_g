//
//  M2Scene.h
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@class M2Grid;
@class M2ViewController;

@interface M2Scene : SKScene

@property (nonatomic, weak) M2ViewController *controller;

- (void)startNewGame;

- (void)loadBoardWithGrid:(M2Grid *)grid;

@end
