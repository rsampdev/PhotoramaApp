//
//  PhotoStore.h
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Photo;

@interface PhotoStore : NSObject

- (void)fetchRecentPhotosWithCompletion:(void(^)(NSArray *))completion;
- (void)fetchImageForPhoto:(Photo *)photo completion:(void(^)(UIImage *))completion;

@end
