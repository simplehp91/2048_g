//
//  M2Cell.m
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import "M2Cell.h"
#import "M2Tile.h"

@implementation M2Cell

- (instancetype)initWithPosition:(M2Position)position
{
  if (self = [super init]) {
    self.position = position;
    self.tile = nil;
  }
  return self;
}


- (void)setTile:(M2Tile *)tile
{
  _tile = tile;
  if (tile) tile.cell = self;
}

@end
