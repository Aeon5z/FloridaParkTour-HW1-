//
//  ParkTableViewController.h
//  FloridaParkTour
//
//  Created by Aeonz on 11/21/17.
//  Copyright © 2017 Aeonz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParkTableViewController : UITableViewController
@property (strong , nonatomic) NSString *pListPath;
@property (strong , nonatomic) NSDictionary *floridaParks;
@property (strong , nonatomic) NSArray *keys;

@end
