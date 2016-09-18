//
//  PhotoDataSource.h
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoDataSource : NSObject <UICollectionViewDataSource>

@property(nonatomic, copy) NSArray *photos;

- (instancetype)initWithPhotos:(NSArray *)photos NS_DESIGNATED_INITIALIZER;

@end
