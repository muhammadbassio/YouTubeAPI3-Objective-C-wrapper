//
//  MABYT3_enums.h
//  YTAPI3Demo
//
//  Created by Muhammad Bassio on 5/2/14.
//  Copyright (c) 2014 Muhammad Bassio. All rights reserved.
//

#ifndef YTAPI3Demo_MABYT3_enums_h
#define YTAPI3Demo_MABYT3_enums_h

typedef enum {
    kYTPrivacyStatusPrivate,
    kYTPrivacyStatusPublic,
    kYTPrivacyStatusUnlisted
} YTPrivacyStatus;

typedef enum {
    kYTActivityBulletin,
    kYTActivityChannelItem,
    kYTActivityComment,
    kYTActivityFavorite,
    kYTActivityLike,
    kYTActivityPlaylistItem,
    kYTActivityRecommendation,
    kYTActivitySocial,
    kYTActivitySubscription,
    kYTActivityUpload
} YTActivityFeedType;

typedef enum {
    kYTInVideoPromotionTypeStart,
    kYTInVideoPromotionTypeEnd
} YTInVideoPromotionType;

typedef enum {
    kYTPromotedResourceTypeVideo,
    kYTPromotedResourceTypeWebsite,
    kYTPromotedResourceTypeRecentUpload
} YTPromotedResourceType;

typedef enum {
    kYTInVideoPromotionPositionTypeCorner
} YTInVideoPromotionPositionType;

typedef enum {
    kYTInVideoPromotionCornerPositionbottomLeft,
    kYTInVideoPromotionCornerPositionbottomRight,
    kYTInVideoPromotionCornerPositiontopLeft,
    kYTInVideoPromotionCornerPositiontopRight
} YTInVideoPromotionCornerPosition;

typedef enum {
    kYTChannelSectioTypeAllPlaylists,
    kYTChannelSectioTypeCompletedEvents,
    kYTChannelSectioTypeLikedPlaylists,
    kYTChannelSectioTypeLikes,
    kYTChannelSectioTypeLiveEvents,
    kYTChannelSectioTypeMultipleChannels,
    kYTChannelSectioTypeMultiplePlaylists,
    kYTChannelSectioTypePopularUploads,
    kYTChannelSectioTypeRecentActivity,
    kYTChannelSectioTypeRecentPosts,
    kYTChannelSectioTypeRecentUploads,
    kYTChannelSectioTypeSinglePlaylist,
    kYTChannelSectioTypeUpcomingEvents
} YTChannelSectioType;

typedef enum {
    kYTChannelSectioStyleHorizontalRow,
    kYTChannelSectioStyleVerticalList
} YTChannelSectioStyle;

typedef enum {
    kYTActivityTypeAll,
    kYTActivityTypeUploads
} YTActivityType;

typedef enum {
    kYTLiveBroadcastContentNone,
    kYTLiveBroadcastContentUpcoming,
    kYTLiveBroadcastContentLive
} YTLiveBroadcastContent;

typedef enum {
    kYTVideoDimension2D,
    kYTVideoDimension3D
} YTVideoDimension;

typedef enum {
    kYTVideoDefinitionSD,
    kYTVideoDefinitionHD
} YTVideoDefinition;

typedef enum {
    kYTVideoLicenseCC,
    kYTVideoLicenseYT
} YTVideoLicense;

typedef enum {
    kYTVideoUploadStatusDeleted,
    kYTVideoUploadStatusFailed,
    kYTVideoUploadStatusProcessed,
    kYTVideoUploadStatusRejected,
    kYTVideoUploadStatusUploaded
} YTVideoUploadStatus;

/*
typedef enum {
    YTVideoUploadFailureReasonCodec,
    kYTVideoUploadStatusFailed,
    kYTVideoUploadStatusProcessed,
    kYTVideoUploadStatusRejected,
    kYTVideoUploadStatusUploaded
} YTVideoUploadFailureReason;

*/

#endif
