/**
 * Copyright (c) 2012 Plain Programs LLC
 * Licensed under the MIT License
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "TiModule.h"
#import "MetadataProxy.h"

@interface ComPlainprogramsStreamingmetadataModule : TiModule 
{
}

-(void)enableMetadata:(TiMediaVideoPlayerProxy*)video;

@end
