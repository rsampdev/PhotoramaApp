//
//  Photo.h
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photo : NSObject

@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly) NSURL *remoteURL;
@property (nonatomic, readonly, copy) NSString *photoID;
@property (nonatomic, readonly) NSDate *dateTaken;
@property (nonatomic) UIImage *image;

- (instancetype)initWithTitle:(NSString *)title photoID:(NSString *)photoID remoteURL:(NSURL *)URL dateTaken:(NSDate *)dateTaken NS_DESIGNATED_INITIALIZER;

@end
