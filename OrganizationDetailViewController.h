//
//  OrganizationDetailViewController.h
//  CSS
//
//  Created by QuXiaoyin on 4/17/15.
//  Copyright (c) 2015 QuXiaoyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrganizationDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *organizationNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UIButton *getDirectionButton;
@property (weak,nonatomic)IBOutlet UILabel *googleMapURL;
@end
