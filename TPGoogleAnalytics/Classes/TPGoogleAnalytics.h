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
-(void)AnalyticsTml:(NSString*)pageName;   //记录页面
-(void)AnalyticsEventHit:(NSString *)category
                  action:(NSString *)action
                   label:(NSString *)label
                   value:(NSNumber *)value;   //记录点击事件

@end

@interface TPGoogleAnalytics : NSObject<TPGoogleAnalyticsProtocol>


@end
