//
//  FKFlickrPhotosetsCommentsEditComment.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef NS_ENUM(NSInteger, FKFlickrPhotosetsCommentsEditCommentError) {
	FKFlickrPhotosetsCommentsEditCommentError_CommentNotFound = 2,		 /* The comment id passed was not a valid comment id. */
	FKFlickrPhotosetsCommentsEditCommentError_BlankComment = 8,		 /* Comment text can't be blank. */
	FKFlickrPhotosetsCommentsEditCommentError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrPhotosetsCommentsEditCommentError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosetsCommentsEditCommentError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosetsCommentsEditCommentError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosetsCommentsEditCommentError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosetsCommentsEditCommentError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosetsCommentsEditCommentError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosetsCommentsEditCommentError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPhotosetsCommentsEditCommentError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosetsCommentsEditCommentError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosetsCommentsEditCommentError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosetsCommentsEditCommentError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosetsCommentsEditCommentError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

};

/*

Edit the text of a comment as the currently authenticated user.




*/
@interface FKFlickrPhotosetsCommentsEditComment : NSObject <FKFlickrAPIMethod>

/* The id of the comment to edit. */
@property (nonatomic, copy) NSString *comment_id; /* (Required) */

/* Update the comment to this text. */
@property (nonatomic, copy) NSString *comment_text; /* (Required) */


@end
