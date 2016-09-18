//
//  PhotoDataSource.m
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "PhotoDataSource.h"
#import "PhotoCollectionViewCell.h"
#import "Photo.h"

@implementation PhotoDataSource

- (instancetype)initWithPhotos:(NSArray *)photos {
    self = [super init];
    if (self) {
        _photos = [photos copy];
    }
    return self;
}

- (instancetype)init {
    return [self initWithPhotos:nil];
}

// MARK: Collection View Data Source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    Photo *photo = self.photos[indexPath.row];
    [cell updateWithImage:photo.image];
    return cell;
}

@end
