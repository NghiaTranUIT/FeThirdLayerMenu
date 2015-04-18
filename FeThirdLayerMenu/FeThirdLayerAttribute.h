//
//  FeThirdLayerAttribute.h
//  FeThirdLayerMenu
//
//  Created by Nghia Tran on 4/17/15.
//  Copyright (c) 2015 Fe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface FeThirdLayerAttribute : NSObject

// Number of layer
@property (assign, nonatomic, readonly) NSInteger numberOfLayer;

// Base color
@property (strong, nonatomic) UIColor *baseColor;

// Scheme of color - depend on base color
@property (strong, nonatomic, readonly) NSArray *schemeColors;

// INit
-(instancetype) initWithNumberOfLayer:(NSInteger) numberOfLayer baseColor:(UIColor *) baseColor;

// Color at index
-(UIColor *) colorAtIndex:(NSInteger) index;
@end
