//
//  FlickrAPI.h
//  Photorama
//
//  Created by Rodney Sampson on 9/16/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlickrAPI : NSObject

+ (NSURL *)recentPhotosURL;
+ (NSArray *)photosFromJSONData:(NSData *)jsonData;

@end
