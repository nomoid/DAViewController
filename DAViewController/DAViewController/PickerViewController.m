//
//  PickerViewController.m
//  DAViewController
//
//  Created by Markus Feng on 10/13/15.
//  Copyright © 2015 Markus Feng and Liam Gong. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *genderPicker;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@property NSArray * genderData;

@end

@implementation PickerViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.genderData = @[@"A", @"B", @"C"];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Picker";
        UIImage * image = [UIImage imageNamed:@"BirthdayCake.png"];
        self.tabBarItem.image = image;
        self.calculator = [[DeathCalculator alloc] init];
    }
    return self;
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.genderData.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.genderData objectAtIndex:row];
}



@end
