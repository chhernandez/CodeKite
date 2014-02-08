//
//  cdkViewController.m
//  WeatherDemo
//
//  Created by Carlos Hernandez on 2/6/14.
//  Copyright (c) 2014 Carlos Hernandez. All rights reserved.
//

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)  // 1

#define kLatestWeatherURL [NSURL URLWithString: @"http://api.openweathermap.org/data/2.5/weather?q=austin,tx&APPID=248e458171fcd11a7b45c08823b982d8"] // 2

#import "cdkViewController.h"

@interface cdkViewController ()

@end

@implementation cdkViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    dispatch_async(kBgQueue, ^{
        NSData* data = [NSData dataWithContentsOfURL: kLatestWeatherURL];
        [self performSelectorOnMainThread:@selector(fetchedData:)withObject:data waitUntilDone:YES];
    });
    
    
}

- (void)fetchedData:(NSData *)responseData{
    // parse out the json data
    NSError* error;
    NSDictionary* austinWeather = [NSJSONSerialization JSONObjectWithData:responseData //1
                                                         options:NSJSONReadingMutableContainers error:&error];
    
    
    NSLog(@"austin weather: %@", austinWeather);
    
    if (error){
         NSLog(@"%@", [error localizedDescription]);
    }
    else{
        NSDictionary* mainAustin = austinWeather[@"main"];
        NSLog(@"main austin: %@",mainAustin);
        
        NSNumber* myhumidity = mainAustin[@"humidity"];
        NSLog(@"humidity: %@", myhumidity);
        
        NSNumber* mytemp = mainAustin[@"temp"];
        NSLog(@"temp: %@", mytemp);
        
        float mytempcelsius = [mytemp floatValue] - 273.15;
        NSLog(@"temp celsius: %f", mytempcelsius);
        
        float mytempfahrenheit = (mytempcelsius * 1.8) + 32;
        NSLog(@"temp fahrenheit: %f", mytempfahrenheit);
    }
    
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
