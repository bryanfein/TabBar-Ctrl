//
//  UserData.m
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/16/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import "UserData.h"

@implementation UserData


+ (instancetype) sharedManager
{
    static dispatch_once_t once;
    static id sharedManager;
    dispatch_once(&once, ^
                  {
                      sharedManager = [[self alloc]init];
                  });
    return sharedManager;
}


-(void)userInfo {
    
    User *bryan = [[User alloc]initWithImageName:@"BryanF.jpg" andName:@"Bryan Fein" andPhotoName:@"BryanPic1.png"];
    
    User *szilard = [[User alloc]initWithImageName:@"SzilardG.jpg" andName:@"Szilard Gabor" andPhotoName:@"SzilardPic1.png"];
    
    self.users = [[NSMutableArray alloc]initWithObjects: bryan, szilard, nil];
}


@end
