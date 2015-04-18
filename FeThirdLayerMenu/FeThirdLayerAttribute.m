//
//  FeThirdLayerAttribute.m
//  FeThirdLayerMenu
//
//  Created by Nghia Tran on 4/17/15.
//  Copyright (c) 2015 Fe. All rights reserved.
//

#import "FeThirdLayerAttribute.h"

@interface FeThirdLayerAttribute ()

// API
-(void) calculateSchemeColor;

@end

@implementation FeThirdLayerAttribute

-(instancetype) initWithNumberOfLayer:(NSInteger) numberOfLayer baseColor:(UIColor *) baseColor
{
    self = [super init];
    
    if (self)
    {
        _numberOfLayer = numberOfLayer;
        self.baseColor = baseColor;
        
        [self calculateSchemeColor];
    }
    
    return self;
}

#pragma mark - Private API
-(void) calculateSchemeColor
{
    _schemeColors = [NSArray array];
}

-(UIColor *) colorAtIndex:(NSInteger)index
{
    NSAssert(index < 0 || index > self.numberOfLayer, @"ERROR - Out of range of colors");
    
    UIColor *color = _schemeColors[index];
    
    return color;
}
@end
