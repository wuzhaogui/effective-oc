//
//  EOCSquare.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCRectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface EOCSquare : EOCRectangle
- (instancetype)initWithDimension:(float)dimension; //  NS_DESIGNATED_INITIALIZER
@end

NS_ASSUME_NONNULL_END
