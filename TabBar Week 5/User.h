//
//  User.h
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/16/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject



@property (nonatomic) int likes;
@property (nonatomic, strong) NSString *logo;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *photo;


-(instancetype)initWithImageName:(NSString*)logo andName:(NSString *)name andPhotoName: (NSString *)photo;



@end
