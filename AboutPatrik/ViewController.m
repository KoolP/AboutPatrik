//
//  ViewController.m
//  AboutPatrik
//
//  Created by Patrik Rikama Hinnenberg on 2018-01-14.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "ViewController.h"
#import "Color.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *switchBlk;
@property (weak, nonatomic) IBOutlet UISwitch *switchRed;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextView *textViewAbout;
@property (weak, nonatomic) IBOutlet UITextField *userName;

@end

@implementation ViewController
AVAudioPlayer *beardSound;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor blackColor],
       NSFontAttributeName:[UIFont fontWithName:@"ContrailOne-Regular" size:21]}];
    self.navigationController.navigationBar.hidden = YES;
    self.bearMe.hidden=YES;
    self.textViewAbout.textContainerInset = UIEdgeInsetsMake(40, 5, 0, 5);
    xColor = [UIColor whiteColor];
}

-(void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = YES;
}

- (IBAction)swichPushed:(id)sender {
    if (_switchBlk.on){
        self.view.backgroundColor  = [UIColor blackColor];
        self.textViewAbout.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0];
        self.textViewAbout.textColor = [UIColor whiteColor];
        self.bearMe.hidden = NO;
        self.userName.text = @"..My dream is..";
        
        NSURL *soundFile;
        soundFile = [NSURL fileURLWithPath:
                    [[NSBundle mainBundle]
                    pathForResource:@"barry"
                    ofType:@"m4a"]];
        beardSound  = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFile error:nil];
        [beardSound play];
        
    } else{
        self.view.backgroundColor = [UIColor whiteColor];
        self.textViewAbout.backgroundColor = [UIColor whiteColor];
        self.textViewAbout.textColor = [UIColor blackColor];
        self.bearMe.hidden = YES;
        self.userName.text = @"Patrik Rikama-Hinnenberg";
    }
}

//Theme switch for global pages
- (IBAction)themeColor:(id)sender {
    if(_switchRed.on) {
    xColor =[UIColor colorWithRed:250.0/255.0 green:255.0/255.0 blue:11.0/255.0 alpha:1.0];
        self.view.backgroundColor  = xColor;
        self.textViewAbout.backgroundColor = [UIColor colorWithRed:250.0/255.0 green:255.0/255.0 blue:11.0/255.0 alpha:1.0];
        
    } else{
      self.view.backgroundColor = [UIColor whiteColor];
      self.textViewAbout.backgroundColor = [UIColor whiteColor];
      xColor =[UIColor whiteColor];
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
