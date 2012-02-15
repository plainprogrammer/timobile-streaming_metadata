/**
 * Copyright (c) 2012 Plain Programs LLC
 * Licensed under the MIT License
 */

#import "MetadataProxy.h"

@implementation TiMediaVideoPlayerProxy (Metadata)

#pragma mark Public APIs

-(void)configureMetadataNotifications
{
    WARN_IF_BACKGROUND_THREAD;	//NSNotificationCenter is not threadsafe!
	NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
	[nc addObserver:self selector:@selector(handleMetadataUpdate:) 
			   name:MPMoviePlayerTimedMetadataUpdatedNotification
			 object:movie];
}

-(NSArray*)timedMetadata{
    if (movie != nil) {
        if ([movie respondsToSelector:@selector(timedMetadata)]) {
            return [movie timedMetadata];
        }
        else {
            return [NSArray array];
        }
    }
    else {
        return [NSArray array];
    }
}

#pragma mark Delegate Callbacks

-(void)handleMetadataUpdate:(NSNotification *)notification
{
	if ([notification object] != movie) 
	{
		return;
	}
    
    if ([self _hasListeners:@"metadata"])
    {
        [self fireEvent:@"metadata"];
    }
}

@end
