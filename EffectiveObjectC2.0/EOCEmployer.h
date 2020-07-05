//
//  EOCEmployer.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/26.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "EOCPerson.h"

@class EOCPerson;

typedef NS_ENUM(NSUInteger, EOCEmployerType) {
    EOCEmployerTypeDeveloper,
    EOCEmployerTypeDesigner,
    EOCEmployerTypeFinnance,
};

NS_ASSUME_NONNULL_BEGIN

@interface EOCEmployer : NSObject
- (void)addEmployee:(EOCPerson *)person;
- (void)removeEmployee:(EOCPerson *)person;

+ (EOCEmployer *)employeeWithType:(EOCEmployerType)type;

- (void)doADayWork;
@end

NS_ASSUME_NONNULL_END
