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
@property (strong, nonatomic) FeThirdLayerAttribute *mainLayerAttribute;

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
-(void) initMainAttribute
{
    _mainLayerAttribute = [[FeThirdLayerAttribute alloc] initWithNumberOfLayer:3 baseColor:[UIColor greenColor]];
}
-(void) initCollectionView
{
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    
    // Setup layout
    FeThirdLayerMenuLayout *layout = [[FeThirdLayerMenuLayout alloc] initWithThirdLayerAttribute:_mainLayerAttribute];
    
    // Register
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    // Set layout
    [_collectionView setCollectionViewLayout:layout animated:NO];
}

#pragma mark - Collection View Delegate / Data source
-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _mainLayerAttribute.numberOfLayer;
}
-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [_mainLayerAttribute colorAtIndex:indexPath.row];
    
    return cell;
}
@end
