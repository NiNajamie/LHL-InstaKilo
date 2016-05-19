//
//  PhotoObjects.m
//  LHL-InstaKilo
//
//  Created by Asuka Nakagawa on 2016-05-18.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "PhotoObjects.h"

@implementation PhotoObjects

- (instancetype)initWithImage: (UIImage *)image location:(NSString *)location subject:(NSString *)subject
{
    self = [super init];
    if (self) {
        self.image = image;
        self.location = location;
        self.subject = subject;
    
    }
    return self;
}




@end
