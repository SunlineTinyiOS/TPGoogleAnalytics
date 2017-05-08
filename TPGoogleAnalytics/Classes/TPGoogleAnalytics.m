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

@interface TPGoogleAnalytics()
@property(nonatomic,retain)GAITrackedViewController *trackedViewController;

@end

@implementation TPGoogleAnalytics

-(instancetype)init{
    if (self=[super init]) {
        Class TinyPlus=NSClassFromString(@"TinyPlus");
        if(TinyPlus){
            id tinyPlusInPod  =  [[TinyPlus alloc] init];
            if([tinyPlusInPod respondsToSelector:@selector(getViewController)]){
                self.trackedViewController =[tinyPlusInPod performSelector:@selector(getViewController)];
            }
        }
        id<GAITracker> tracker = [[GAI sharedInstance] trackerWithTrackingId:@"UA-98719097-1"];
        [GAI sharedInstance].trackUncaughtExceptions = YES;
        tracker.allowIDFACollection = YES;
    }
    return self;
}

-(void)AnalyticsTml:(NSString*)pageName{
    self.trackedViewController.screenName = pageName;
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
