//
//  ParkTableViewController.m
//  FloridaParkTour
//
//  Created by Aeonz on 11/21/17.
//  Copyright © 2017 Aeonz. All rights reserved.
//

#import "ParkTableViewController.h"
#import "parkHelper.h"
#import "ParkDetailViewController.h"
#import "ParkCellTableView.h"

@interface ParkTableViewController ()

@end

@implementation ParkTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pListPath = [[NSBundle mainBundle]pathForResource:@"parkList" ofType:@"plist"];
    self.floridaParks = [[NSDictionary alloc] initWithContentsOfFile:self.pListPath];
    self.keys = [[self.floridaParks allKeys] sortedArrayUsingSelector:@selector(compare:)];
    
    NSLog(@"%@" , self.floridaParks[@"Alafia River State Park"]);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.floridaParks count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *parkCell = @"parkCell";
    ParkCellTableView *cell = [tableView dequeueReusableCellWithIdentifier:parkCell forIndexPath:indexPath];
    NSString *key = [self.keys objectAtIndex:indexPath.row];
    cell.lblParkName.text = self.floridaParks[key][@"parkName"];
    cell.lblParkLocation.text = self.floridaParks[key][@"Location"];
    cell.cellThumbnail.image = [UIImage imageNamed:self.floridaParks[key][@"parkImage"]];

    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ParkDetailViewController *detailVC = [segue destinationViewController];
    NSIndexPath *myPath = [self.tableView indexPathForSelectedRow];
    parkHelper *item = [[parkHelper alloc]init];
    NSString *key = [self.keys objectAtIndex:myPath.row];
    //store
    item.parkDescription = self.floridaParks[key][@"Description"];
    item.parkYear = self.floridaParks[key][@"Year"];
    item.parkLocation = self.floridaParks[key][@"Location"];
    item.parkImage = [UIImage imageNamed:self.floridaParks[key][@"parkImage"]];
    
    
    //pass
    detailVC.myPark = item; 
}


@end
