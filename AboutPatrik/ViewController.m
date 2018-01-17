//
//  ViewController.m
//  AboutPatrik
//
//  Created by Patrik Rikama Hinnenberg on 2018-01-14.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor blackColor],
       NSFontAttributeName:[UIFont fontWithName:@"ContrailOne-Regular" size:21]}];
    // Change UI navBar font
    
    _bearMe.hidden=YES;
    // Hide beard
    
    _textView.textContainerInset = UIEdgeInsetsMake(50, 5, 0, 5);
    // Format text container
}

- (IBAction)swichPushed:(id)sender {
    if (_switchBlk.on){
        self.view.backgroundColor  = [UIColor blackColor];
        _textViewAbout.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0];
        _textViewAbout.textColor = [UIColor whiteColor];
        /*_textViewAbout.backgroundColor = [UIColor colorWithRed:138.0/255.0 green:235.0/255.0 blue:243.0/255.0 alpha:1.0];*/
        _bearMe.hidden = NO;
        
    } else{
        self.view.backgroundColor = [UIColor whiteColor];
        _textViewAbout.backgroundColor = [UIColor whiteColor];
        _textViewAbout.textColor = [UIColor blackColor];
        _bearMe.hidden = YES;
    }
}

- (IBAction)github:(id)sender {
    NSURL * githubURL = [NSURL URLWithString:@"https://github.com/KoolP"];
    
    [[UIApplication sharedApplication] openURL: githubURL options:@{} completionHandler:nil];
}

- (IBAction)koolsport:(id)sender {
    NSURL * koolsportURL = [NSURL URLWithString:@"http://koolsport.se/"];
    
    [[UIApplication sharedApplication] openURL: koolsportURL options:@{} completionHandler:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
