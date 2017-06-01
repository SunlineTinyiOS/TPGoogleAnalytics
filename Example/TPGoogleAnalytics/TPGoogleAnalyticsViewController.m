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
    [googleAnalytics AnalyticsEventHit:@"11" :@"11" :@"2" :@"12"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
