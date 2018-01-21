//
//  gameViewController.m
//  AboutPatrik
//
//  Created by Patrik Rikama Hinnenberg on 2018-01-17.
//  Copyright © 2018 Patrik Rikama Hinnenberg. All rights reserved.
//

#import "gameViewController.h"
#import "Color.h"

@interface gameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *guessedNumber;
@property (weak, nonatomic) IBOutlet UIImageView *winImage;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UITextField *userInputField;
@end

UIImageView *animView;
UIImageView *winView;

@implementation gameViewController {
    int magicNumber;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = xColor;
    self.navigationController.navigationBar.hidden = NO;
    magicNumber = 1 + arc4random_uniform(100);
    self.winImage.hidden=YES;
    self.userInputField.keyboardType = UIKeyboardTypeNumberPad;
    //Allows only numericKeyboard on phone.
    
}
- (IBAction)guessButton:(id)sender {
    self.infoLabel.hidden=TRUE;
    self.winImage.hidden=TRUE;
    NSArray *animArray = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"m1.png"],
                          [UIImage imageNamed:@"m2.png"],
                          [UIImage imageNamed:@"m3.png"],
                          [UIImage imageNamed:@"m4.png"],
                          [UIImage imageNamed:@"m5.png"],
                          [UIImage imageNamed:@"m6.png"],nil];
    animView = [[UIImageView alloc] initWithFrame:CGRectMake(170, 145, 48.0, 48.0)];
    animView.animationImages = animArray;
    animView.animationDuration = 1;
    animView.contentMode = UIViewContentModeBottomLeft;
    [self.view addSubview:animView];
    [animView startAnimating];
    [self performSelector:@selector(stopTheAnimation) withObject:nil afterDelay:1.5];
    
    int guessedNumber = self.guessedNumber.text.intValue;
    if (magicNumber > guessedNumber) {
        self.infoLabel.text = @"Higher please";
    }else if (magicNumber < guessedNumber) {
        self.infoLabel.text = @"Lower please";
    }else if (magicNumber == guessedNumber) {
        self.infoLabel.text = @"You the best";
        if ([self.infoLabel.text isEqualToString:@"You the best"]) {
            self.winImage.hidden=NO;
    }
    }
}

-(void)stopTheAnimation{
    [animView stopAnimating];
    self.infoLabel.hidden=FALSE;
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
