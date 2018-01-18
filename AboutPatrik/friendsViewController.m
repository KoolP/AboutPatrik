//
//  friendsViewController.m
//  AboutPatrik
//
//  Created by Patrik Rikama Hinnenberg on 2018-01-18.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "friendsViewController.h"

@interface friendsViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *switchFriends;

@end

@implementation friendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _beauty.hidden=YES;
    _trucker.hidden=YES;
}
- (IBAction)modifyFriends:(id)sender {
    if (_switchFriends.on) {
        _beauty.hidden=NO;
        _trucker.hidden=NO;
    }
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
