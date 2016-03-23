//
//  FirstViewController.h
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/14/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserData.h"
#import "PhotoViewController.h"

@interface FirstViewController : UITableViewController



@property(nonatomic) long selectedRow;

@property (nonatomic, strong) UserData *userData;
@property (nonatomic, strong) PhotoViewController *photoVC;
@property (nonatomic, strong) NSMutableArray *users;



@end

