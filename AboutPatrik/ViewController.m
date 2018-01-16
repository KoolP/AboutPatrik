//
//  ViewController.m
//  AboutPatrik
//
//  Created by Patrik Rikama Hinnenberg on 2018-01-14.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Change UI navBar font
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor blackColor],
       NSFontAttributeName:[UIFont fontWithName:@"ContrailOne-Regular" size:21]}];
    
}

- (IBAction)swichPushed:(id)sender {
    if (_switchBlk.on){
        self.view.backgroundColor  = [UIColor blackColor];
        _textViewAbout.backgroundColor = [UIColor colorWithRed:138.0/255.0 green:235.0/255.0 blue:243.0/255.0 alpha:1.0];
        
    } else{
        self.view.backgroundColor = [UIColor whiteColor];
        _textViewAbout.backgroundColor = [UIColor whiteColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
