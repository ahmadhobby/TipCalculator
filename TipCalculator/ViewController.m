//
//  ViewController.m
//  TipCalculator
//
//  Created by Ahmad Hobby on 2018-06-15.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmount;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;


@end

@implementation ViewController

- (IBAction)calculateTip:(id)sender {
    
  // grab textField.text (bill amount). Save it to a var and log it out
    // set the label to that value

    NSString *amountInput = self.billAmount.text;
    NSLog(@"%@", amountInput);
    
    self.billAmount.text = amountInput;
    
    // get the value from tip percent. Save it to a var and log out out
    // get these two variables and then compute them
    
    NSString *tipPercent = self.tipPercentage.text;
    NSLog(@"%@", tipPercent);
    
    float tip = amountInput.floatValue * (tipPercent.floatValue / 100.0);
   
    float result = tip + amountInput.floatValue;
    
    // final step: set the value to the label
    
    self.tipAmount.text = @(result).stringValue;
    
    // 
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tipAmount.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
