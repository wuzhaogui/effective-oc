//
//  EOCLocation.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCLocation.h"

@implementation EOCLocation

- (instancetype)init {
    return [self initWithTitle:@"" latitude:0.0f longitude:0.0f];
}

- (instancetype)initWithTitle:(NSString *)title
                     latitude:(float)latitude
                    longitude:(float)longitude {
    if (self = [super init]) {
        _title = title.copy;
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, %@>", [self class], self,
            @{
              @"title": _title,
              @"latitude": @(_latitude),
              @"longitude": @(_longitude)
              }];
}

@end
