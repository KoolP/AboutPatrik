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
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UITextField *userInputField;

@end

@implementation gameViewController {
    int magicNumber;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = xColor;
    self.navigationController.navigationBar.hidden = NO;
    // Do any additional setup after loading the view.
    magicNumber = 1 + arc4random_uniform(100);
    
    self.userInputField.keyboardType = UIKeyboardTypeNumberPad;
    //Allows only numericKeyboard on phone. To set value for guess number. Othervice letters with values can be added.
    
}
- (IBAction)guessButton:(id)sender {
    
    int guessedNumber = self.guessedNumber.text.intValue;
    
    if (magicNumber > guessedNumber) {
        self.infoLabel.text = @"Higher";
    }else if (magicNumber < guessedNumber) {
        self.infoLabel.text = @"Lower";
    }else if (magicNumber == guessedNumber) {
        self.infoLabel.text = @"You the best";
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
