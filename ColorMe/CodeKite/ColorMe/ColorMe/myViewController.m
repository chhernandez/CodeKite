//
//  myViewController.m
//  ColorMe
//
//  Created by Carlos Hernandez on 1/20/14.
//  Copyright (c) 2014 Carlos Hernandez. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()

@end

@implementation myViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissModalController:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
