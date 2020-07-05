//
//  EOCSquare.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCSquare.h"

@implementation EOCSquare

- (instancetype)initWithWidth:(float)width andHeight:(float)height {
    float dimension = MAX(width, height);
    return [super initWithWidth:dimension andHeight:dimension];;
}

- (instancetype)initWithDimension:(float)dimension {
    return [super initWithWidth:dimension andHeight:dimension];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        
    }
    return self;
}

@end
