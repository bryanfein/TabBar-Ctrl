//
//  PhotoViewController.h
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/16/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController

@property(nonatomic) NSString *photoName;

@property(nonatomic) long row;

@property (strong, nonatomic) IBOutlet UIImageView *photo;


- (IBAction)like_button:(id)sender;


@end
