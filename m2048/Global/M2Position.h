//
//  M2Position.h
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#ifndef m2048_M2Position_h
#define m2048_M2Position_h

typedef struct Position {
  NSInteger x;
  NSInteger y;
} M2Position;

CG_INLINE M2Position M2PositionMake(NSInteger x, NSInteger y)
{
  M2Position position;
  position.x = x; position.y = y;
  return position;
}

#endif
