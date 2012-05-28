//
//  MapLocationViewController.m
//  Tour_Srilanka
//
//  Created by Kapilan Karunanathan on 1/11/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import "MapLocationViewController.h"

#import "LocationAnnotation.h"
#import "LocationProfile.h"


@implementation MapLocationViewController
@synthesize mapView,userProfileVC;


#pragma mark -
#pragma mark View lifecycle

- (void)gotoLocation
{
    // start off by default in San Francisco
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 37.786996;
    newRegion.center.longitude = -122.440100;
    newRegion.span.latitudeDelta = 0.112872;
    newRegion.span.longitudeDelta = 0.109863;
	
    [self.mapView setRegion:newRegion animated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
	
	CLLocation *userLoc = mapView.userLocation.location;
    CLLocationCoordinate2D userCoordinate = userLoc.coordinate;
	
	NSLog(@"user latitude = %f",userCoordinate.latitude);
	NSLog(@"user longitude = %f",userCoordinate.longitude);
	
	mapView.delegate=self;
	
	NSMutableArray* annotations=[[NSMutableArray alloc] init];
	
    CLLocationCoordinate2D theCoordinate1;
    theCoordinate1.latitude =7.092716;
    theCoordinate1.longitude = 80.856628;
	
	CLLocationCoordinate2D theCoordinate2;
    theCoordinate2.latitude = 7.719157;
    theCoordinate2.longitude = 81.684723;
	
	CLLocationCoordinate2D theCoordinate3;
    theCoordinate3.latitude = 8.303906;
    theCoordinate3.longitude = 80.623169;
	
	CLLocationCoordinate2D theCoordinate4;
    theCoordinate4.latitude = 7.808963;
    theCoordinate4.longitude = 80.255127;
    
    CLLocationCoordinate2D theCoordinate5;
    theCoordinate5.latitude = 9.700909;
    theCoordinate5.longitude = 80.209486;
    
    CLLocationCoordinate2D theCoordinate6;
    theCoordinate6.latitude =5.96029;
    theCoordinate6.longitude = 80.546265;
	
	CLLocationCoordinate2D theCoordinate7;
    theCoordinate7.latitude = 6.670064;
    theCoordinate7.longitude = 80.661621;
	
	CLLocationCoordinate2D theCoordinate8;
    theCoordinate8.latitude = 7.299812;
    theCoordinate8.longitude = 81.084595;
	
	CLLocationCoordinate2D theCoordinate9;
    theCoordinate9.latitude = 6.893707;
    theCoordinate9.longitude = 79.861592;
    
    CLLocationCoordinate2D theCoordinate10;
    theCoordinate10.latitude = 6.893707;
    theCoordinate10.longitude = 79.85314;
	
	LocationAnnotation* myAnnotation1=[[LocationAnnotation alloc] init];
    
	myAnnotation1.coordinate=theCoordinate1;
	myAnnotation1.title=@"Amaya Hills Kandy";
	myAnnotation1.subtitle=@"15% Off This Week";
    
    
	
	
	
	LocationAnnotation* myAnnotation3=[[LocationAnnotation alloc] init];
	
	myAnnotation3.coordinate=theCoordinate3;
	myAnnotation3.title=@"Amaya Lake Dambulla";
	myAnnotation3.subtitle=@"20% off on Dinner";
	
    
    
    
    
    LocationAnnotation* myAnnotation6=[[LocationAnnotation alloc] init];
	
	myAnnotation6.coordinate=theCoordinate6;
	myAnnotation6.title=@"Hunas Falls by Amaya";
	myAnnotation6.subtitle=@"20% off for Dinning";
	
	
	
	LocationAnnotation* myAnnotation8=[[LocationAnnotation alloc] init];
	
	myAnnotation8.coordinate=theCoordinate8;
	myAnnotation8.title=@"Langdale Amaya Radella";
	myAnnotation8.subtitle=@"30% off Entire Month";

    
    
   
    
    LocationAnnotation* myAnnotation10=[[LocationAnnotation alloc] init];
    
    myAnnotation10.coordinate=theCoordinate10;
	myAnnotation10.title=@"Coral Rock by Amaya";
	myAnnotation10.subtitle=@"10% off for Diving";
	
	[mapView addAnnotation:myAnnotation1];
	
	[mapView addAnnotation:myAnnotation3];
    
    [mapView addAnnotation:myAnnotation6];
	
	[mapView addAnnotation:myAnnotation8];
	
    [mapView addAnnotation:myAnnotation10];
	
	
    
    [annotations addObject:myAnnotation1];
    
    [annotations addObject:myAnnotation3];
	
    [annotations addObject:myAnnotation6];

	[annotations addObject:myAnnotation8];

    [annotations addObject:myAnnotation10];
	
	NSLog(@"%d",[annotations count]);
	//[self gotoLocation];//to catch perticular area on screen
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	
	// Walk the list of overlays and annotations and create a MKMapRect that
    // bounds all of them and store it into flyTo.
    MKMapRect flyTo = MKMapRectNull;
	for (id <MKAnnotation> annotation in annotations) {
		NSLog(@"fly to on");
        MKMapPoint annotationPoint = MKMapPointForCoordinate(annotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0, 0);
        if (MKMapRectIsNull(flyTo)) {
            flyTo = pointRect;
        } else {
            flyTo = MKMapRectUnion(flyTo, pointRect);
			//NSLog(@"else-%@",annotationPoint.x);
        }
    }
    
    // Position the map so that all overlays and annotations are visible on screen.
    mapView.visibleMapRect = flyTo;
	
	
	UIBarButtonItem* temp=[[UIBarButtonItem alloc] init];
	temp.title=@"Back";
	self.navigationItem.backBarButtonItem=temp;
	[temp release];
	
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
	NSLog(@"welcome into the map view annotation");
	
	// if it's the user location, just return nil.
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
	static NSString* AnnotationIdentifier = @"AnnotationIdentifier";
	MKPinAnnotationView* pinView = [[[MKPinAnnotationView alloc]
									 initWithAnnotation:annotation reuseIdentifier:AnnotationIdentifier] autorelease];
	pinView.animatesDrop=YES;
	pinView.canShowCallout=YES;
	pinView.pinColor=MKPinAnnotationColorPurple;
	
	
	UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	[rightButton setTitle:annotation.title forState:UIControlStateNormal];
	[rightButton addTarget:self
					action:@selector(showDetails:)
		  forControlEvents:UIControlEventTouchUpInside];
	pinView.rightCalloutAccessoryView = rightButton;
	
	UIImageView *profileIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"15-tags.png"]];
	pinView.leftCalloutAccessoryView = profileIconView;
	[profileIconView release];
	
	
	return pinView;
}


//-(IBAction)showDetails:(id)sender{
//    
//	NSLog(@"Annotation Click");
//	self.userProfileVC.title=((UIButton*)sender).currentTitle;
//	[self.navigationController pushViewController:self.userProfileVC animated:YES];
//}




@end
