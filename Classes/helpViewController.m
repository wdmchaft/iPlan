//
//  HelpViewController.m
//  iPlan
//
//  Created by Zhao Cong on 6/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelpViewController.h"

#import "SharedAppDataObject.h"
#import "AppDelegateProtocol.h"

#define HELP_MESSAGE @"If you have any questions, please contact Zhan Yin Bo~~~"
#define ABOUT_MESSAGE @"Thanks!\n We are expecting your support!"

@implementation HelpViewController


#pragma mark -
#pragma mark synthesise
@synthesize helpTextView;


#pragma mark -
#pragma mark instance method

- (SharedAppDataObject*) theAppDataObject
{
	id<AppDelegateProtocol> theDelegate = (id<AppDelegateProtocol>) [UIApplication sharedApplication].delegate;
	SharedAppDataObject* theDataObject;
	theDataObject = (SharedAppDataObject*) theDelegate.theAppDataObject;
	return theDataObject;
}


#pragma mark -
#pragma mark view life cycle


// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	SharedAppDataObject *theAppData = [self theAppDataObject];
	
	if([theAppData.settingsIdentity isEqual:@"1"]){
		helpTextView.text = HELP_MESSAGE;
	}else if ([theAppData.settingsIdentity isEqual:@"2"]) {
		helpTextView.text = ABOUT_MESSAGE;
	}else {
		printf("Error");
	}

	self.view = helpTextView;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
	self.helpTextView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[helpTextView release];
    [super dealloc];
}


@end