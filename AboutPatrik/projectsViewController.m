//
//  projectsViewController.m
//  AboutPatrik
//
//  Created by Patrik Rikama Hinnenberg on 2018-01-19.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "projectsViewController.h"
#import "Color.h"

@interface projectsViewController ()

@end

@implementation projectsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = xColor;
    //xColor = [UIColor redColor];
    //self.view.backgroundColor = [UIColor redColor];
    
    self.navigationController.navigationBar.hidden = NO;
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
