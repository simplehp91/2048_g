//
//  M2Overlay.h
//  m2048
//
//  Created by Nguyen Hiep on 21/12/2016.
//  Copyright © 2016 JEC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface M2Overlay : UIView

@property (nonatomic, weak) IBOutlet UILabel *message;

@property (nonatomic, weak) IBOutlet UIButton *keepPlaying;

@property (nonatomic, weak) IBOutlet UIButton *restartGame;

@end
