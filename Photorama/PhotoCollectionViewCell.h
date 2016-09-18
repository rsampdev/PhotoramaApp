//
//  PhotoCollectionViewCell.h
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCollectionViewCell : UICollectionViewCell

@property(nonatomic) IBOutlet UIImageView *imageView;
@property(nonatomic) IBOutlet UIActivityIndicatorView *spinner;

- (void)updateWithImage:(UIImage *)image;

@end
