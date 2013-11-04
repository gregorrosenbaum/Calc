//
//  ViewController.m	
//  Aufgabe 2
//
//  Created by Gregor Rosenbaum on 25.10.13.
//  Copyright (c) 2013 Gregor Rosenbaum. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int number1;
int number2;
NSMutableArray *opDone;

- (void)viewDidLoad

{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    opDone = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)digitPressed:(id)sender {
    NSString *digit = [sender currentTitle];
    NSLog(@"Gedrückt:%@", digit);
    _myLabel.text = [_myLabel.text stringByAppendingString:digit];
    
}
- (IBAction)EnterTaste:(id)sender {
    if (number1 == 0) {
        number1 =[_myLabel.text intValue];
        _myLabel.text = @"";
        }
    else {
        number2 =[_myLabel.text intValue];
        _myLabel.text = @"";


    }
    
}
    

- (IBAction)Rechenoperation:(id)sender {
    NSString *operate = [sender currentTitle];
    if ([operate isEqual: @"+"]) {
        _myLabel.text = [NSString stringWithFormat:@"%d",  (number1 + number2)];
        
    }
    if ([operate isEqual: @"-"]) {
        _myLabel.text = [NSString stringWithFormat:@"%d",  (number1 - number2)];
    }
    if ([operate isEqual: @"*"]) {
        _myLabel.text = [NSString stringWithFormat:@"%d",  (number1 * number2)];
    }
    if ([operate isEqual: @"/"]) {
        _myLabel.text = [NSString stringWithFormat:@"%d",  (number1 / number2)];
    }
    number1 = [_myLabel.text intValue];
    if (number1 >= 0){
        _vorzeichen.text = @"P";
    }else _vorzeichen.text = @"N";
    
    if ([opDone count] > 9){
        [opDone removeObjectAtIndex:0];        
    }
    [opDone addObject:operate];
    
    _operations.text = [opDone componentsJoinedByString:@" "];        
    
    }

@end
