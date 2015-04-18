//
//  FeThirdLayerHeader.h
//  FeThirdLayerMenu
//
//  Created by Nghia Tran on 4/17/15.
//  Copyright (c) 2015 Fe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeThirdLayerHeaderView : UICollectionReusableView

// Progress of header
// It will layoutsubview depend on progress
@property (assign, nonatomic, readonly) CGFloat progress;

@end
