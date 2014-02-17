//
//  cdkDetailViewController.m
//  FashionExample
//
//  Created by Carlos Hernandez on 2/16/14.
//  Copyright (c) 2014 Carlos Hernandez. All rights reserved.
//

#import "cdkDetailViewController.h"
#import <Parse/Parse.h>


@interface cdkDetailViewController ()
- (void)configureView;
@end

@implementation cdkDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem objectForKey:@"Label"];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    if (self.detailItem){
        NSLog(@"my object contains: %@", self.detailItem);
         
        
    } else {
        NSLog(@"I have no objects: %d", 0);
    }
    
    
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
