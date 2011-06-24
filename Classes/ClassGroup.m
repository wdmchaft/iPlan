//
//  ClassGroup.m
//  iPlan
//
//  Created by Yingbo Zhan on 11-6-18.
//  Copyright 2011 NUS. All rights reserved.
//

#import "ClassGroup.h"


@implementation ClassGroup
@synthesize name;
@synthesize slots;
@synthesize frequency;
@synthesize selected;

-(id)initWithName:(NSString*)naming WithSlots:(NSArray*)slot WithFrequency:(NSNumber*)freq WithSelected:(NSString*)select
{
	[super init];
	if(super !=nil)
	{
		name = naming;
		slots = slot;
		frequency = freq;
		selected = select;
	}
	return self;
}

-(void)encodeWithCoder:(NSCoder *)coder{

	[coder encodeObject:name forKey:@"name"];
	[coder encodeObject:slots forKey:@"slots"];
	[coder encodeObject:frequency forKey:@"frequency"];
	[coder encodeObject:selected forKey:@"selected"];
}

-(id)initWithCoder:(NSCoder *)decoder{
	if([super init]!=nil){
		[self initWithName:[decoder decodeObjectForKey:@"name"] WithSlots:[decoder decodeObjectForKey:@"slots"] 
			 WithFrequency:[decoder decodeObjectForKey:@"frequency"] WithSelected:[decoder decodeObjectForKey:@"selected"]]; 
	}
	return self;
}

-(BOOL)checkSelected
{
	if([selected isEqual:@"YES"])
		return YES;
	else {
		return NO;
	}
}

- (void) showContents
{
    NSLog(@"++++++ Start of ClassGroup ++++++");
    NSLog(@"name: %@", self.name);
    NSLog(@"frequency: %d", [self.frequency integerValue]);
    NSLog(@"selected: %@", self.selected);
    for (Slot * s in self.slots)
    {
        [s showContents];
    }
    NSLog(@"++++++ End of ClassGroup ++++++");
}

-(void)dealloc{
	[name release];
	[slots release];
	[frequency release];
	[selected release];
	[super dealloc];
}


@end
