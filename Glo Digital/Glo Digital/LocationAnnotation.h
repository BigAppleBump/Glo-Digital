//
//  MapLocationViewController.m
//  Sampath Bank
//
//  Created by Kapilan Karunanathan on 14/4/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface LocationAnnotation : NSObject<MKAnnotation> {
	
	CLLocationCoordinate2D	coordinate;
	NSString *title;
	NSString *subtitle;
    IBOutlet UIImageView *img1;
}

@property (nonatomic, assign)	CLLocationCoordinate2D	coordinate;
@property (nonatomic, copy)		NSString*				title;
@property (nonatomic, copy)		NSString*				subtitle;
@property (nonatomic, copy) IBOutlet UIImageView *img1;

@end