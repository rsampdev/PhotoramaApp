//
//  Photo.m
//  Photorama
//
//  Created by Rodney Sampson on 9/17/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithTitle:(NSString *)title photoID:(NSString *)photoID remoteURL:(NSURL *)URL dateTaken:(NSDate *)dateTaken {
    self = [super init];
    if (self) {
        _title = [title copy];
        _photoID = [photoID copy];
        _remoteURL = URL;
        _dateTaken = dateTaken;
    }
    return self;
}

- (instancetype)init {
    return [self initWithTitle:nil photoID:nil remoteURL:nil dateTaken:nil];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"< Photo id=\"%@\" title=\"%@\"> ", self.photoID, self.title];
}

@end
