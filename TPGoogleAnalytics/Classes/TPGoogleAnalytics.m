//
//  TPGoogleAnalytics.m
//  Pods
//
//  Created by kingdomrain on 2017/5/8.
//
//

#import "TPGoogleAnalytics.h"

#import "GAITrackedViewController.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"
#import "GAIFields.h"

@interface TPGoogleAnalytics()
@property(nonatomic,retain)UIViewController *trackedViewController;
@property(nonatomic,retain)NSString *url;   //page页面名称

@end

@implementation TPGoogleAnalytics

-(instancetype)init{
    if (self=[super init]) {
        Class TinyPlus=NSClassFromString(@"TinyPlus");
        if(TinyPlus){
            id tinyPlusInPod  =  [[TinyPlus alloc] init];
            if([tinyPlusInPod respondsToSelector:@selector(getViewController)]){
                self.trackedViewController =(UIViewController *)[tinyPlusInPod performSelector:@selector(getViewController)];
                self.url =(UIViewController *)[tinyPlusInPod performSelector:@selector(GetPageName)];
            }
        }
        
        id<GAITracker> tracker = [[GAI sharedInstance] trackerWithTrackingId:@"UA-98719097-1"];
        [GAI sharedInstance].trackUncaughtExceptions = YES;
        tracker.allowIDFACollection = YES;
    }
    return self;
}



-(void)AnalyticsLoadTml{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:self.url];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
    
    [[GAI sharedInstance].defaultTracker send:
     [[GAIDictionaryBuilder createEventWithCategory:@"pageEvent"
                                             action:@"load"
                                              label:nil
                                              value:nil] build]];
}

-(void)AnalyticsdidAppearTml{
    [[GAI sharedInstance].defaultTracker send:
     [[GAIDictionaryBuilder createEventWithCategory:@"pageEvent"
                                             action:@"didAppear"
                                              label:nil
                                              value:nil] build]];
}

-(void)AnalyticsOnunloadTml{
    [[GAI sharedInstance].defaultTracker send:
     [[GAIDictionaryBuilder createEventWithCategory:@"pageEvent"
                                             action:@"onunload"
                                              label:nil
                                              value:nil] build]];
    
}

-(void)AnalyticsEventHit:(NSString *)category :(NSString *)action :(NSString *)label :(NSNumber *)value
{
    [self AnalyticsEventHit:category action:action label:label value:value];
}
    
-(void)AnalyticsEventHit:(NSString *)category
                  action:(NSString *)action
                   label:(NSString *)label
                   value:(NSNumber *)value
{
    [[GAI sharedInstance].defaultTracker send:
     [[GAIDictionaryBuilder createEventWithCategory:category
                                             action:action
                                              label:label
                                              value:value] build]];
}


@end
