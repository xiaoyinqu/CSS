//
//  OrganizationListTableViewController.h
//  CSS
//
//  Created by QuXiaoyin on 4/17/15.
//  Copyright (c) 2015 QuXiaoyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrganizationListTableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *feedtableview;

@end