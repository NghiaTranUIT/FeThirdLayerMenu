//
//  FeThirdLayerLabel.m
//  FeThirdLayerMenu
//
//  Created by Nghia Tran on 4/17/15.
//  Copyright (c) 2015 Fe. All rights reserved.
//

#import "FeThirdLayerLabel.h"

@interface FeThirdLayerLabel ()

-(void) initCommon;

@end

@implementation FeThirdLayerLabel

#pragma mark - Init
-(instancetype) init
{
    self = [super init];
    
    if (self)
    {
        [self initCommon];
    }
    
    return self;
}
-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self initCommon];
    }
    return self;
}
-(instancetype) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self initCommon];
    }
    return self;
}
-(void) awakeFromNib
{
    [self initCommon];
}
-(void) initCommon
{
    
}
@end
