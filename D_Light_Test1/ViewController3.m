//
//  ViewController3.m
//  D_Light_Test1
//
//  Created by Nathan Stanley on 14/08/2015.
//  Copyright (c) 2015 Nathan Stanley. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
//Private Variables
@property (weak, nonatomic) IBOutlet UILabel *boyOrGirl;

@end

@implementation ViewController3


//How to auto complete action based on previous userData
- (void)viewDidLoad
{
    [super viewDidLoad];
    //put code here or call another method
    [self showSex];
}
- (void) showSex
{
    //self.boyOrGirl.textColor = [UIColor redColor];
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger sex = [defaults integerForKey:@"sex"];
    if (sex == 0) {
        self.boyOrGirl.text = @"BOY";
        
    }
    else if (sex == 1) {
        self.boyOrGirl.text = @"GIRL";

    }
    
}


@end