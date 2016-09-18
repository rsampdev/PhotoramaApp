//
//  PhotoInfoViewController.h
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Photo;
@class PhotoStore;

@interface PhotoInfoViewController : UIViewController

@property(nonatomic) Photo *photo;
@property(nonatomic) PhotoStore *photoStore;

@end
