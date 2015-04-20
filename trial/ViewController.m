//
//  ViewController.m
//

#import "ViewController.h"

@interface CSSViewController : UIViewController <UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"Call listing"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:9098257861"]];
    }
    else if([title isEqualToString:@"Go"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.google.com/maps/place/Claremont+Optometry/@34.107263,-117.725608,17z/data=!3m1!4b1!4m2!3m1!1s0x80c331c1833116db:0x5843b1ad57e1705d"]];
    }
    else if([title isEqualToString:@"Call CSS"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:9096219900"]];
    }
    else if([title isEqualToString:@"Call IV"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:8002518191"]];
    }
    else if([title isEqualToString:@"Call PV"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:9098659500"]];
    }
}

- (IBAction)callPhone:(id)sender {
    
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Call"
                                                       message:@"Do you want to call this listing?"
                                                      delegate:self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"Call listing",nil];
    [theAlert show];

}
- (IBAction)getDirections:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Directions"
                                                       message:@"Do you want to get directions?"
                                                      delegate:self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"Go",nil];
    [theAlert show];
}
- (IBAction)callCSS:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Call"
                                                       message:@"Do you want to call CSS?"
                                                      delegate:self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"Call CSS",nil];
    [theAlert show];
}
- (IBAction)callInnerValley:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Inner Valley"
                                                       message:@"Do you want to call Inner Valley?"
                                                      delegate:self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"Call IV",nil];
    [theAlert show];
}
- (IBAction)callPomonaValley:(id)sender {
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Pomona Valley"
                                                       message:@"Do you want to call Pomona Valley?"
                                                      delegate:self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"Call PV",nil];
    [theAlert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
