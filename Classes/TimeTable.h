//
//  TimeTable.h
//  iPlan
//
//  Created by Yingbo Zhan on 11-6-18.
//  Copyright 2011 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Module.h"
#import "ConstantFile.h"

@interface TimeTable : NSObject {
	
}
@property(nonatomic,retain)NSString* name;
@property(nonatomic,retain)NSMutableArray* modules;
-(BOOL)getOneDefaultSolutionsWithCurrentProgress:(NSMutableArray*)currentProgress
							WithBasicInformation:(NSMutableArray*)basicInformation
				  WithAddInClassGroupInformation:(NSMutableArray*)addInClassGroup
								   WithTimeTable:(NSMutableArray*)timeTable
									  WithResult:(NSMutableArray*)result
								 WithModuleIndex:(NSMutableArray*)moduleIndex;
@end
