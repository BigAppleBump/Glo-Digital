//
//  MapLocationViewController.m
//  Sampath Bank
//
//  Created by Kapilan Karunanathan on 14/4/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationProfile.h"

@interface MapLocationViewController : UIViewController<MKMapViewDelegate> {

IBOutlet MKMapView* mapView;
IBOutlet LocationProfile* userProfileVC; 

}
@property(nonatomic,retain)	IBOutlet MKMapView* mapView;
@property(nonatomic,retain) IBOutlet LocationProfile* userProfileVC;


@end
