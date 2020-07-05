//
//  EOCRectangle.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCRectangle.h"

@implementation EOCRectangle

- (instancetype)init {
    return [self initWithWidth:5.0f andHeight:5.0f];
}

- (instancetype)initWithWidth:(float)width
                    andHeight:(float)height {
    if (self = [super init]) {
        _width = width;
        _height = height;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        _width = [aDecoder decodeFloatForKey:@"width"];
        _height = [aDecoder decodeFloatForKey:@"height"];
    }
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    
}


@end
