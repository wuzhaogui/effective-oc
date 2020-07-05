//
//  OCSinglton.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/7/4.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OCSinglton : NSObject
+ (instancetype)shareInstance;
@end

NS_ASSUME_NONNULL_END
