//
//  HomePageViewController.m
//  Glo Digital
//
//  Created by Kapilan Karunanathan on 5/4/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import "HomePageViewController.h"

@implementation HomePageViewController

@synthesize myUIImageViewObject;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)setDefaultAnim:(UIImageView *)imageView
{
    [imageView stopAnimating];
    imageView.animationImages = defaultAnimation;
    imageView.animationDuration = 20.0;
   
    
    [imageView startAnimating];
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    defaultAnimation = [NSArray arrayWithObjects:
                        [UIImage imageNamed:@"1.jpg"],
                        [UIImage imageNamed:@"2.jpg"],
                        [UIImage imageNamed:@"3.jpg"],
                        [UIImage imageNamed:@"4.jpeg"],
                        [UIImage imageNamed:@"5.jpg"],
                        [UIImage imageNamed:@"6.jpg"],
                        nil];
    [self setDefaultAnim:myUIImageViewObject];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
