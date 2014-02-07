//
//  cdkViewController.m
//  WeatherDemo
//
//  Created by Carlos Hernandez on 2/6/14.
//  Copyright (c) 2014 Carlos Hernandez. All rights reserved.
//

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)  // 1

#define kLatestWeatherURL [NSURL URLWithString: @"http://api.openweathermap.org/data/2.5/weather?q=austin%2Ctx"] // 2

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
    NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseData //1
                                                         options:kNilOptions error:&error];
    NSArray* austinWeather = [json objectForKey:@"main"]; //2
    NSLog(@"main: %@", austinWeather); //3
    
    NSDictionary* weather = [austinWeather objectAtIndex:0];  // get the latest weather
    
    // get the individual data values
  //  NSNumber* humidity = [weather objectForKey:@"humidy"];
  //  NSNumber* pressure = [weather objectForKey:@"pressure"];
  //  NSString* temp = [weather objectForKey:@"temp"];
//    float tempCelsius = [temp floatValue] - 273.15;
 //   float tempFahrenheit = (tempCelsius * 1.8) + 32;
    
    // set the label approprately
  //  todaysWeather.text = [NSString stringWithFormat:@"Today's temperature is "];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
