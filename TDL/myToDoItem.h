//
//  myToDoItem.h
//  TDL
//
//  Created by Carlos Hernandez on 12/26/13.
//  Copyright (c) 2013 Carlos Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myToDoItem : NSObject

@property NSString *itemName;

@property BOOL completed;

@property (readonly) NSDate *creationDate;

@end
