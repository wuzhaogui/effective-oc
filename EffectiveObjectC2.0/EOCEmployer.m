//
//  EOCEmployer.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/26.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCEmployer.h"
#import "EOCPerson.h"
#import "EOCEmployerFinane.h"
#import "EOCEmployerDesigner.h"
#import "EOCEmployerDeveloper.h"

//  static 不会为kAnimationDuration创建外部符号,只在编译单元内可见
static const NSTimeInterval kAnimationDuration = 0.3;

NSString * const EOCStringConstant = @"EOCStringConstant";

@implementation EOCEmployer
- (void)addEmployee:(EOCPerson *)person {
    
}
- (void)removeEmployee:(EOCPerson *)person {
    
}

+ (EOCEmployer *)employeeWithType:(EOCEmployerType)type {
    switch (type) {
        case EOCEmployerTypeDeveloper: return [EOCEmployerDeveloper new];
        case EOCEmployerTypeDesigner: return [EOCEmployerDesigner new];
        case EOCEmployerTypeFinnance: return [EOCEmployerFinane new];
    }
}

- (void)doADayWork {
    NSLog(@"doADayWork");
}

@end
