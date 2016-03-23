//
//  UserData.h
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/16/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"


@interface UserData : NSObject

@property (nonatomic, strong) NSMutableArray *users;

-(void)userInfo;

+ (id)sharedManager;

@end
