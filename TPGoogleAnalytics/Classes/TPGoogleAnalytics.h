//
//  TPGoogleAnalytics.h
//  Pods
//
//  Created by kingdomrain on 2017/5/8.
//
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JSExport.h>

@protocol TPGoogleAnalyticsProtocol <JSExport>
-(void)AnalyticsLoadTml;      //页面加载统计
-(void)AnalyticsdidAppearTml;   //页面出现统计
-(void)AnalyticsOnunloadTml;      //页面消失统计

-(void)AnalyticsEventHit:(NSString *)category :(NSString *)action :(NSString *)label :(NSNumber *)value;

@end

@interface TPGoogleAnalytics : NSObject<TPGoogleAnalyticsProtocol>


@end
