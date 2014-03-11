//
//  DetailViewController.h
//  masterdetail
//
//  Created by itsadmin on 3/4/14.
//  Copyright (c) 2014 itsadmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
