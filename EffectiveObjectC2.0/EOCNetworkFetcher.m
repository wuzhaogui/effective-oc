//
//  EOCNetworkFetcherDelegate.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/28.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCNetworkFetcher.h"

@implementation EOCNetworkFetcher

- (void)setDelegate:(id<EOCNetworkFetcherDelegate>)delegate {
    _delegate = delegate;
    _delegateFlags.didReceiveData = [delegate respondsToSelector:@selector(networkFetcher:didReceiveData:)];
    _delegateFlags.didFailWithError = [delegate respondsToSelector:@selector(networkFetcher:didFailWithError:)];
    _delegateFlags.didUpdateProgressTo = [delegate respondsToSelector:@selector(networkFetcher:didUpdateProgressTo:)];
}

@end
