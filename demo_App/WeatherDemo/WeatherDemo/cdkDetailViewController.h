//
//  cdkDetailViewController.h
//  WeatherDemo
//
//  Created by Carlos Hernandez on 2/15/14.
//  Copyright (c) 2014 Carlos Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface cdkDetailViewController : UIViewController

@property (nonatomic, strong) PFObject *detailItem;

@end
