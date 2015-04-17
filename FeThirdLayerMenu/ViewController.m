//
//  ViewController.m
//  FeThirdLayerMenu
//
//  Created by Nghia Tran on 4/17/15.
//  Copyright (c) 2015 Fe. All rights reserved.
//

#import "ViewController.h"
#import "FeThirdLayerHeaderFile.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

// Collection View
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initCommon];
    
    [self initCollectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Init
-(void) initCommon
{
    
}
-(void) initCollectionView
{
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    
    // Setup layout
    
}
@end
