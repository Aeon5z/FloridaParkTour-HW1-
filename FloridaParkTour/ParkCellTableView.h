//
//  ParkCellTableView.h
//  FloridaParkTour
//
//  Created by Aeonz on 11/21/17.
//  Copyright © 2017 Aeonz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParkCellTableView : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblParkName;
@property (weak, nonatomic) IBOutlet UILabel *lblParkLocation;
@property (weak, nonatomic) IBOutlet UIImageView *cellThumbnail;

@end
