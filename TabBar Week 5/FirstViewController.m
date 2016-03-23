//
//  FirstViewController.m
//  TabBar Week 5
//
//  Created by Bryan Fein on 8/14/15.
//  Copyright (c) 2015 Bryan Fein. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

{
//    int count1;
//    int count2;
//    User *bryan;
//    User *szilard;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.userData = [UserData sharedManager];
    [self.userData userInfo];
    self.users = self.userData.users;
    self.title = @"Friends";
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNotification:) name:@"like_notification" object:nil];
    
//    count1 = 0;
//    count2 = 0;
}

-(void)receiveNotification:(NSNotification *) notification{
    

   /*
    
    if ([notification.name isEqualToString:@"test1"]) {
        count1++;
        bryan.likes = [NSString stringWithFormat:@"%d",count1];

        
    } else {
        count2++;
        szilard.likes = [NSString stringWithFormat:@"%d",count2];
    }
    */
    
    //PhotoViewController *vc = notification.object;
    User *u = [self.users objectAtIndex:self.selectedRow];
    u.likes++;
    
    [self.tableView reloadData];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.users count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...

    User *user = [self.users objectAtIndex:indexPath.row];
    
    NSString *label = [NSString stringWithFormat:@"%@ Likes: %d",user.name, user.likes];
    
    cell.textLabel.text = label;
    
    cell.imageView.image = [UIImage imageNamed:[[self.users objectAtIndex:indexPath.row]logo]];
    
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


-(void)dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    User *currentUser = [self.userData.users objectAtIndex:[indexPath row]];

    
    self.selectedRow = indexPath.row;
    [self performSegueWithIdentifier:@"pushToPhotoVC" sender:self];
    /*
    self.photoVC = [[PhotoViewController alloc]init];

    
    [self.photoVC.photo setImage:[UIImage imageNamed: currentUser.photo]];
        
    [self.navigationController pushViewController: self.photoVC animated:YES];
*/
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"segue pushToPhotoVC");
    
    //addToCartViewContollerForItem
    if([[segue identifier] isEqualToString:@"pushToPhotoVC"]){
        
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        User *currentUser = [self.userData.users objectAtIndex:[indexPath row]];
        PhotoViewController *vc = [segue destinationViewController];
        [vc setPhotoName: currentUser.photo];
        vc.row = indexPath.row;
        
    }
    
}

@end
