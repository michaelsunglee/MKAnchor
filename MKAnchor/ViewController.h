//
//  ViewController.h
//  MKAnchor
//
//  Created by Michael Lee on 2015-07-14.
//  Copyright (c) 2015 leeemichael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate,
                                              MKAnnotation>
@property (nonatomic, strong) CLLocationManager *locationManager;

@property(nonatomic, strong) IBOutlet MKMapView *mkMap;;
@property(nonatomic, strong) IBOutlet UIButton *coffeeSearch;
@property(nonatomic, strong) IBOutlet UILabel *locationServicesStatus;

-(IBAction)coffeeSearchPressed;
@end