//
//  VideoViewController.m
//  Glo Digital
//
//  Created by Kapilan Karunanathan on 5/4/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import "VideoViewController.h"

@implementation VideoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(IBAction)playMovie:(id)sender ;
{
    UIButton *playButton = (UIButton *) sender;
    
    playButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 175, 120)];
    
   
    
    
    NSString *filepath   =   [[NSBundle mainBundle] pathForResource:@"sandartsample" ofType:@"mp4"];
    NSURL    *fileURL    =   [NSURL fileURLWithPath:filepath];
    
    
    MPMoviePlayerController *moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
	
    [[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(moviePlaybackComplete:)
												 name:MPMoviePlayerPlaybackDidFinishNotification
											   object:moviePlayerController];
	
    
    
    
    
    
    //moviePlayerController.pause = pauseButton;
    
	[self.view addSubview:moviePlayerController.view];
    
    //  moviePlayerController.controlStyle = MPMovieControlStyleNone;
    moviePlayerController.view.userInteractionEnabled =YES; 
    
    
    //  moviePlayerController.fullscreen = YES;
	
    moviePlayerController.scalingMode = MPMovieScalingModeFill;
	
    [moviePlayerController play];
}

- (void)moviePlaybackComplete:(NSNotification *)notification
{
    MPMoviePlayerController *moviePlayerController = [notification object];
    [[NSNotificationCenter defaultCenter] removeObserver:self
													name:MPMoviePlayerPlaybackDidFinishNotification
												  object:moviePlayerController];
	
    [moviePlayerController.view removeFromSuperview];
    [moviePlayerController release];
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
