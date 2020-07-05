//
//  EOCLocation.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOCLocation : NSObject
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, assign, readonly) float latitude;
@property (nonatomic, assign, readonly) float longitude;

- (instancetype)init;

- (instancetype)initWithTitle:(NSString *)title
                     latitude:(float)latitude
                    longitude:(float)longitude NS_DESIGNATED_INITIALIZER;
@end

NS_ASSUME_NONNULL_END
