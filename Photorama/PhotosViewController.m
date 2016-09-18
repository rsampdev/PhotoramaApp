//
//  ViewController.m
//  Photorama
//
//  Created by Rodney Sampson on 9/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "PhotosViewController.h"
#import "PhotoStore.h"
#import "PhotoDataSource.h"
#import "Photo.h"
#import "PhotoCollectionViewCell.h"
#import "PhotoInfoViewController.h"

@interface PhotosViewController ()

@property (nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) PhotoDataSource *photoDataSource;

@end

@implementation PhotosViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.photoDataSource = [PhotoDataSource new];
    self.collectionView.dataSource = self.photoDataSource;
    self.collectionView.delegate = self;
    [self.photoStore fetchRecentPhotosWithCompletion:^(NSArray *photos){
        NSLog(@"Found %lu photos", (unsigned long)photos.count);
        if (photos.count == 0) {
            NSLog(@"Zero photos! Sad times.");
            return;
        }
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.photoDataSource.photos = photos;
            [self.collectionView reloadSections:[NSIndexSet indexSetWithIndex:0]];
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowPhoto"]) {
        NSIndexPath *selectedIndexPath = [self.collectionView indexPathsForSelectedItems].firstObject;
        Photo *photo = self.photoDataSource.photos[selectedIndexPath.row];
        PhotoInfoViewController *destinationVC = segue.destinationViewController;
        destinationVC.photoStore = self.photoStore;
        destinationVC.photo = photo;
    }
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
    Photo *photo = self.photoDataSource.photos[indexPath.row];
    [self.photoStore fetchImageForPhoto:photo completion:^(UIImage *image) {
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            NSUInteger photoIndex = [self.photoDataSource.photos indexOfObject:photo];
            NSIndexPath *photoIndexPath = [NSIndexPath indexPathForItem:photoIndex inSection:0];
            PhotoCollectionViewCell *photoCell = (PhotoCollectionViewCell *)[self.collectionView cellForItemAtIndexPath:photoIndexPath];
            [photoCell updateWithImage:image];
        }];
    }];
}


@end
