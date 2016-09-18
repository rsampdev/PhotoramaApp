//
//  PhotoCollectionViewCell.m
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell

- (void)updateWithImage:(UIImage *)image {
    if (image != nil) {
        [self.spinner stopAnimating];
    } else {
        [self.spinner startAnimating];
    }
    self.imageView.image = image;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self updateWithImage:nil];
}

- (void)prepareForReuse {
    [super prepareForReuse];
    [self updateWithImage:nil];
}

@end
