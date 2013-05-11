//
//  ViewController.h
//  ChicagoReport
//
//  Created by Donncha Carroll on 5/11/13.
//  Copyright (c) 2013 Donncha Carroll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#define METERS_PER_MILE 1609.344

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
