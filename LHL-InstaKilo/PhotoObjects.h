//
//  PhotoObjects.h
//  LHL-InstaKilo
//
//  Created by Asuka Nakagawa on 2016-05-18.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface PhotoObjects : NSObject

@property (nonatomic) UIImage *image;
@property (nonatomic) NSString *location;
@property (nonatomic) NSString *subject;

- (instancetype)initWithImage: (UIImage *)image location:(NSString *)location subject:(NSString *)subject;

@end
