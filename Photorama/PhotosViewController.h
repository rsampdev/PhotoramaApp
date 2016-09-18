//
//  ViewController.h
//  Photorama
//
//  Created by Rodney Sampson on 9/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoStore;

@interface PhotosViewController : UIViewController <UICollectionViewDelegate>

@property (nonatomic) PhotoStore *photoStore;

@end
