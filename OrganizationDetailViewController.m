//
//  OrganizationDetailViewController.m
//  CSS
//
//  Created by QuXiaoyin on 4/17/15.
//  Copyright (c) 2015 QuXiaoyin. All rights reserved.
//

#import "OrganizationDetailViewController.h"

@interface OrganizationDetailViewController ()

@end

@implementation OrganizationDetailViewController
@synthesize phoneNumberLabel = _phoneNumberLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)setPhoneText:(NSString *)text{
    self.phoneNumberLabel.titleLabel.text = text;
}

-(void)setAddressLabel:(UILabel *)addressLabel{
    self.addressLabel = addressLabel;
    self.addressLabel.numberOfLines = 3;
    NSString *prefix = @"https://www.google.com/maps/place/";
    NSString *addressURL = addressLabel.text;
    self.googleMapURL.text = [prefix stringByAppendingString:addressURL];
}

-(void)setOrganizationNameLabel:(UILabel *)organizationNameLabel{
    self.organizationNameLabel = organizationNameLabel;
    self.organizationNameLabel.numberOfLines = 3;
}

- (IBAction)callPhone:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.phoneNumberLabel.titleLabel.text]];
}
- (IBAction)getDirections:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.googleMapURL.text]];
}
- (IBAction)callCSS:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:9096219900"]];
}
- (IBAction)callInnerValley:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:8002518191"]];
}
- (IBAction)callPomonaValley:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:9098659500"]];
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
