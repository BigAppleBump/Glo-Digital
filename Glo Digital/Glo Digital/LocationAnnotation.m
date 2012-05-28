//
//  MapLocationViewController.m
//  Sampath Bank
//
//  Created by Kapilan Karunanathan on 14/4/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import "LocationAnnotation.h"

@implementation LocationAnnotation

@synthesize title;
@synthesize subtitle;
@synthesize coordinate;
@synthesize img1;


- (void)dealloc 
{

	self.title = nil;
	self.subtitle = nil;
    self.img1 = nil;
    
}
@end