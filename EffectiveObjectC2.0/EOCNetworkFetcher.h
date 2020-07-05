//
//  EOCNetworkFetcherDelegate.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/28.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCNetworkFetcher;

@protocol EOCNetworkFetcherDelegate <NSObject>

- (void)networkFetcher:(EOCNetworkFetcher *_Nullable)fetcher
        didReceiveData:(NSData *_Nullable)data;

@optional
- (void)networkFetcher:(EOCNetworkFetcher *_Nullable)fetcher
      didFailWithError:(NSData *_Nullable)data;
- (void)networkFetcher:(EOCNetworkFetcher *_Nullable)fetcher
   didUpdateProgressTo:(float)progress;

@end

typedef void (^EOCNetWorkFetcherCompletionHandler)(NSData * _Nullable data);

NS_ASSUME_NONNULL_BEGIN

@interface EOCNetworkFetcher : NSObject {
    //  如果调用代理方法太频繁
    struct {
        //  位段：缓存方法响应能力
        unsigned int didReceiveData: 1;
        unsigned int didFailWithError: 1;
        unsigned int didUpdateProgressTo: 1;
    } _delegateFlags;
}
//  委托模式
//  weak 一般代理对象会拥有本对象，所以本对象不拥有代理
@property (nonatomic, weak) id <EOCNetworkFetcherDelegate> delegate;

- (instancetype)initWithURL:(NSURL *)url;
- (void)start;
- (void)startWithCompletionHandle:(EOCNetWorkFetcherCompletionHandler)handle;
@end

NS_ASSUME_NONNULL_END
