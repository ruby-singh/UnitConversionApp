//
//  ViewController.m
//  UnitConversion
//
//  Created by Ruby on 12/28/15.
//  Copyright © 2015 Hello World Organisation. All rights reserved.
//

#import "ViewController.h"

double convertMeterToCentimeter(double inputUnit){
    
    double unitTwo = inputUnit * 100 ;
    
    return unitTwo;
    
}
double convertMeterToKilometer(double inputUnit){
    
    double unitThree = inputUnit / 1000 ;
    
    return unitThree;
    
}
double convertMeterToMillimeter(double inputUnit){
    
    double unitFour = inputUnit * 1000 ;
    
    return unitFour;
    
}
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0){
        
        double unitTwoValue = convertMeterToCentimeter(userInput);
        [buf appendString:[@(unitTwoValue) stringValue]];
        
        
    }else if(self.segmentController.selectedSegmentIndex == 1){
        
        double unitThreeValue = convertMeterToKilometer(userInput);
        [buf appendString:[@(unitThreeValue) stringValue]];
        
    }else {
        
        double unitFourValue = convertMeterToMillimeter(userInput);
        [buf appendString:[@(unitFourValue) stringValue]];
    }
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
