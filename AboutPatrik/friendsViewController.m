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
@property (weak, nonatomic) IBOutlet UITextView *descriptionEric;
@property (weak, nonatomic) IBOutlet UITextView *descriptionMilja;
@property (weak, nonatomic) IBOutlet UITextView *descriptionMani;
@property (nonatomic) NSDictionary *friendData;
@end

@implementation friendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _beauty.hidden=YES;
    _trucker.hidden=YES;
    _carlita.hidden=YES;
    
    self.friendData = @{ @"eric": @"Eric är en mysig kille. Han har studerat till electro ingenjör och gillar Robot Wars. Med Eric skall vi åka till FOSDEM 18' och kolla det senaste som open source communityn har att erbjuda.", @"milja": @"Milja är en superdatabas från Finland hon pratar typ 6 olika språk, bland annat flytande japanska och hon har bott i Japan.", @"mani": @"Mr Seghdi är den som satt igång kaffe gruppen i klassen och mannen som får igång processen. Han kommer bli en kanon lösnings arkitekt." };
}


- (IBAction)modifyFriends:(id)sender {
    if (_switchFriends.on) {
        _beauty.hidden=NO;
        _trucker.hidden=NO;
        _carlita.hidden=NO;
    } else {
        _beauty.hidden=YES;
        _trucker.hidden=YES;
        _carlita.hidden=YES;
    }
    
    self.descriptionEric.text = self.friendData[@"eric"];
    self.descriptionMilja.text = self.friendData[@"milja"];
    self.descriptionMani.text = self.friendData[@"mani"];
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
