//
//  MyCollectionViewController.m
//  LHL-InstaKilo
//
//  Created by Asuka Nakagawa on 2016-05-18.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "MyCollectionViewController.h"
#import "ViewController.h"
#import "PhotoObjects.h"
#import "CustomCollectionViewCell.h"


@interface MyCollectionViewController ()


@property (nonatomic) NSArray *imagesOfInfo;

@end

@implementation MyCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    // create new photoObject that carries image, location and subject
    PhotoObjects *photo1 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"puff"] location:@"Vancouver" subject:@"Food"];
    PhotoObjects *photo2 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"cats"] location:@"Burnaby" subject:@"Animal"];
    PhotoObjects *photo3 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"shelves"] location:@"Vancouver" subject:@"House"];
    PhotoObjects *photo4 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"theCure"] location:@"Vancouver" subject:@"Music"];
    PhotoObjects *photo5 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"plants"] location:@"Vancouver" subject:@"House"];
    PhotoObjects *photo6 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"gastown"] location:@"Vancouver" subject:@"Tourist"];
    PhotoObjects *photo7 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"eggBenny"] location:@"Vancouver" subject:@"Food"];
    PhotoObjects *photo8 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"dog"] location:@"Burnaby" subject:@"Animal"];
    PhotoObjects *photo9 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"cherry"] location:@"Burnaby" subject:@"House"];
    PhotoObjects *photo10 = [[PhotoObjects alloc] initWithImage:[UIImage imageNamed:@"capilano"] location:@"Vancouver" subject:@"Tourist"];
    
    // put all the photoObjects into an array
    self.imagesOfInfo = [NSArray arrayWithObjects:photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10, nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imagesOfInfo.count;
}

// matching a cell to a image from PhotoObjects
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                                               forIndexPath:indexPath];
    PhotoObjects * photo = [self.imagesOfInfo objectAtIndex:indexPath.item];
    cell.imageView.image = photo.image;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
