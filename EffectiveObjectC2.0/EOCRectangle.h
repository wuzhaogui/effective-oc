//
//  EOCRectangle.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOCRectangle : NSObject <NSCoding>
@property (nonatomic, assign, readonly) float width;
@property (nonatomic, assign, readonly) float height;

- (instancetype)initWithWidth:(float)width
                    andHeight:(float)height;    //  NS_DESIGNATED_INITIALIZER
@end

NS_ASSUME_NONNULL_END
