//
//  PhotoViewController.m
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/16/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import "PhotoViewController.h"
#import "FirstViewController.h"


@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //dont need to alloc/init for an IBOutlet bc its already allocated
    //   self.photo = [[UIImageView alloc]init];
    
    self.photo.image = [UIImage imageNamed:self.photoName];

    self.title = @"Photos";
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)like_button:(id)sender {
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"like_notification" object:self];

}


-(void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
