//
//  SecondViewController.m
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/14/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Inbox";

    [self.photoImage setImage:[UIImage imageNamed:@"logo.png"]];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
