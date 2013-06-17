//
//  FKFlickrStatsGetPopularPhotos.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrStatsGetPopularPhotos.h" 

@implementation FKFlickrStatsGetPopularPhotos

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 0;
}

- (NSString *) name {
    return @"flickr.stats.getPopularPhotos";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.date) {
		[args setValue:self.date forKey:@"date"];
	}
	if(self.sort) {
		[args setValue:self.sort forKey:@"sort"];
	}
	if(self.per_page) {
		[args setValue:self.per_page forKey:@"per_page"];
	}
	if(self.page) {
		[args setValue:self.page forKey:@"page"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrStatsGetPopularPhotosError_UserDoesNotHaveStats:
			return @"User does not have stats";
		case FKFlickrStatsGetPopularPhotosError_NoStatsForThatDate:
			return @"No stats for that date";
		case FKFlickrStatsGetPopularPhotosError_InvalidDate:
			return @"Invalid date";
		case FKFlickrStatsGetPopularPhotosError_InvalidSort:
			return @"Invalid sort";
		case FKFlickrStatsGetPopularPhotosError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrStatsGetPopularPhotosError_MissingSignature:
			return @"Missing signature";
		case FKFlickrStatsGetPopularPhotosError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrStatsGetPopularPhotosError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrStatsGetPopularPhotosError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrStatsGetPopularPhotosError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrStatsGetPopularPhotosError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrStatsGetPopularPhotosError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrStatsGetPopularPhotosError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrStatsGetPopularPhotosError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrStatsGetPopularPhotosError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end