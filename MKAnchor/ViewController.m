//
//  ViewController.m
//  MKAnchor
//
//  Created by Michael Lee on 2015-07-14.
//  Copyright (c) 2015 leeemichael. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize mkMap;
@synthesize locationManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    if([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]){
        [locationManager requestWhenInUseAuthorization];
    }
    [locationManager startUpdatingLocation];
    self.mkMap.showsUserLocation = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)coffeeSearchPressed{
    MKLocalSearchRequest *request = [[MKLocalSearchRequest alloc] init];
    request.naturalLanguageQuery = @"Restuarants";
    request.region = mkMap.region;
    MKLocalSearch *search = [[MKLocalSearch alloc] initWithRequest:request];
    [search startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error){
        NSLog(@"MapItems: %@", response.mapItems);
        
        //adding to results to map
//        for(MKMapItem *result in response.mapItems){
//            result.place
//        }
    }];
    

}

//locationManger delegate method
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
}
@end