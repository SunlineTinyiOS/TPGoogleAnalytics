//
//  TPGoogleAnalyticsViewController.m
//  TPGoogleAnalytics
//
//  Created by bygd2014@sina.com on 05/08/2017.
//  Copyright (c) 2017 bygd2014@sina.com. All rights reserved.
//

#import "TPGoogleAnalyticsViewController.h"
#import <TPGoogleAnalytics/TPGoogleAnalytics.h>

@interface TPGoogleAnalyticsViewController ()

@end

@implementation TPGoogleAnalyticsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TPGoogleAnalytics *googleAnalytics = [[TPGoogleAnalytics alloc]init];
    [googleAnalytics AnalyticsEventHit:@"UI" action:@"OPEN" label:@"settings" value:nil];
    [googleAnalytics AnalyticsTml:@"shouye"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
