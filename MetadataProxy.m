/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2012 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "MetadataProxy.h"

@implementation TiMediaVideoPlayerProxy (Metadata)

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

@end
