/**
 * Copyright (c) 2012 Plain Programs LLC
 * Licensed under the MIT License
 */
#import "TiProxy.h"
#import "TiMediaVideoPlayerProxy.h"

@interface TiMediaVideoPlayerProxy (Metadata)

- (void) configureMetadataNotifications;
- (NSArray*) timedMetadata;

@end
