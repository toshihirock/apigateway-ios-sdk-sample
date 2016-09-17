//
//  ViewController.m
//  ApigatewaySampleApp
//
//  Created by Furuno, Toshihiro on 2016/09/17.
//  Copyright © 2016年 Furuno, Toshihiro. All rights reserved.
//

#import "ViewController.h"
#import "CLIWeatherAPIClient.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"start APIG test app");
    CLIWeatherAPIClient *client = [CLIWeatherAPIClient defaultClient];
    [[client weatherGet:@"xxxxxxx" q:@"Tokyo"] continueWithExecutor:[AWSExecutor mainThreadExecutor]
                                              withBlock:^id(AWSTask *task) {
                                                  if (task.error) {
                                                      NSLog(@"Error: %@", task.error);
                                                  } else if (task.exception) {
                                                      NSLog(@"Exception: %@", task.exception);
                                                  } else {
                                                      CLIWeather *weather = task.result;
                                                      CLIWeather_weather_item *item = weather.weather.firstObject;
                                                      NSString *message = [NSString stringWithFormat:@"Weather: %@", item.main];
                                                      NSLog(@"result is %@", message);
                                                      /**
                                                      [[[UIAlertView alloc] initWithTitle:@"Get response"
                                                                                  message:message
                                                                                 delegate:nil
                                                                        cancelButtonTitle:nil
                                                                        otherButtonTitles:@"Close", nil] show];
                                                       **/
                                                  }
                                                  return nil;
                                              }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
