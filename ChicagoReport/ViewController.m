//
//  ViewController.m
//  ChicagoReport
//
//  Created by Donncha Carroll on 5/11/13.
//  Copyright (c) 2013 Donncha Carroll. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController () <CLLocationManagerDelegate> {
    BOOL _didStartMonitoringRegion;
}
@property (strong, nonatomic) CLLocationManager *locationManager;
@end

@implementation ViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Initialize Location Manager
    self.locationManager = [[CLLocationManager alloc] init];
    
    // Configure Location Manager
    [self.locationManager setDelegate:self];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    [self.locationManager startUpdatingLocation];
    CLLocation *location = [self.locationManager location];
    NSLog(@" long is %f while lat is %f", location.coordinate.longitude, location.coordinate.latitude);
    
    // load map
    mapView.delegate = self;
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = location.coordinate.latitude;
    zoomLocation.longitude= location.coordinate.longitude;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    [mapView setRegion:viewRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
