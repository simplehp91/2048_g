//
//  M2GridView.h
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class M2Grid;

@interface M2GridView : UIView

/**
 * Create the entire background of the view with the grid at the correct position.
 *
 * @param grid The grid object that the image bases on.
 */
+ (UIImage *)gridImageWithGrid:(M2Grid *)grid;

/**
 * Create the entire background of the view with a translucent overlay on the grid.
 * The rest of the image is clear color, to create the illusion that the overlay is
 * only over the grid.
 */
+ (UIImage *)gridImageWithOverlay;

@end
