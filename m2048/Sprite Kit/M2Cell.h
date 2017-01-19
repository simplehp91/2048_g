//
//  M2Cell.h
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class M2Tile;

@interface M2Cell : NSObject

/** The position of the cell. */
@property (nonatomic) M2Position position;

/** The tile in the cell, if any. */
@property (nonatomic, strong) M2Tile *tile;

/**
 * Initialize a M2Cell at the specified position with no tile in it.
 *
 * @param position The position of the cell.
 */
- (instancetype)initWithPosition:(M2Position)position;

@end
