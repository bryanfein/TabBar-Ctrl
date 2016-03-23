//
//  User.m
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/16/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import "User.h"

@implementation User



-(instancetype)initWithImageName:(NSString*)logo andName:(NSString *)name andPhotoName: (NSString *)photo;

{
    
    self = [super init];
    if (self){
        
        _logo  = logo;
        _name  = name;
        _photo = photo;
        _likes = 0;
    }
    return self;

}


@end
