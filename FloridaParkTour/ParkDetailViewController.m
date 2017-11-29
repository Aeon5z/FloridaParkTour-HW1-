//
//  ParkDetailViewController.m
//  FloridaParkTour
//
//  Created by Aeonz on 11/21/17.
//  Copyright © 2017 Aeonz. All rights reserved.
//

#import "ParkDetailViewController.h"


@interface ParkDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *largeParkimage;
@property (weak, nonatomic) IBOutlet UILabel *lblYear;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;
@property (weak, nonatomic) IBOutlet UITextView *txtParkDescription;

@end

@implementation ParkDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.txtParkDescription.text = self.myPark.parkDescription;
    self.lblAddress.text = self.myPark.parkLocation;
    self.lblYear.text = self.myPark.parkYear;
    self.largeParkimage.image = self.myPark.parkImage;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
