//
//  FeMyHeaderView.m
//  FeThirdLayerMenu
//
//  Created by Nghia Tran on 4/18/15.
//  Copyright (c) 2015 Fe. All rights reserved.
//

#import "FeMyHeaderView.h"
#import "FeMyHeaderView.h"
#import "FeThirdLayerLabel.h"

@interface FeMyHeaderView ()

// Layer label
@property (weak, nonatomic) IBOutlet FeThirdLayerLabel *layerTitleLbl;
@property (weak, nonatomic) IBOutlet UIButton *tapMeBtn;

-(void) initCommon;
-(void) configureAttribute;
@end

@implementation FeMyHeaderView

-(void) awakeFromNib
{
    [super awakeFromNib];
    
    // Init
    [self initCommon];
    
    [self configureAttribute];
}

-(void) initCommon
{
    
}
-(void) configureAttribute
{
    
}
@end
