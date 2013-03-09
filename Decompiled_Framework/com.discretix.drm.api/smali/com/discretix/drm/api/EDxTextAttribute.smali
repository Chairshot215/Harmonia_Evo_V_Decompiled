.class public final enum Lcom/discretix/drm/api/EDxTextAttribute;
.super Ljava/lang/Enum;
.source "EDxTextAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/EDxTextAttribute$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/EDxTextAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_ALBUM_TITLE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_ALBUM_TRACK_NUM:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_AUTHOR:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CLASSIFICATION_ENTITY:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CLASSIFICATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CLASSIFICATION_TABLE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_COMMON_HDR_VERSION:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CONTENT_ID:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CONTENT_LOCATION:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CONTENT_URL:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_CONTENT_VERSION:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_COPYRIGHT_NOTICE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_COVER_URI:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_DESCRIPTION:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_ENCRYPTION_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_FILE_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_GENRE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_GROUP_ID:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_ICON_URI:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_INFO_URL:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_KEYWORDS:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_LOCATION_ALTITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_LOCATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_LOCATION_LATITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_LOCATION_LONGITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_LOCATION_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_LYRICS_URI:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_PADDING_SCHEME:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_PERFORMER:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_PREVIEW_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_PREVIEW_URL:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_PROFILE_NAME:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_RATING_CRITERIA:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_RATING_ENTITY:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_RATING_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_RECORDING_YEAR:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_RI_URL:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_SILENT_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_SILENT_URL:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_TITLE:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_TRANSACTION_ID:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_ATTR_VENDOR:Lcom/discretix/drm/api/EDxTextAttribute;

.field public static final enum DX_NUM_OF_ATTRIBUTES:Lcom/discretix/drm/api/EDxTextAttribute;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CONTENT_ID"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_ID:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CONTENT_MIME_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_FILE_MIME_TYPE"

    invoke-direct {v0, v1, v5}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_FILE_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_TITLE"

    invoke-direct {v0, v1, v6}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_TITLE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_DESCRIPTION"

    invoke-direct {v0, v1, v7}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_DESCRIPTION:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_AUTHOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_AUTHOR:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_RI_URL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RI_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_ICON_URI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ICON_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_VENDOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_VENDOR:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_ENCRYPTION_METHOD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ENCRYPTION_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_COMMON_HDR_VERSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COMMON_HDR_VERSION:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_PADDING_SCHEME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PADDING_SCHEME:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_INFO_URL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_INFO_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_COVER_URI"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COVER_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_LYRICS_URI"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LYRICS_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_SILENT_METHOD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_SILENT_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_SILENT_URL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_SILENT_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_PREVIEW_METHOD"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PREVIEW_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_PREVIEW_URL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PREVIEW_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CONTENT_URL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CONTENT_VERSION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_VERSION:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CONTENT_LOCATION"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_LOCATION:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_PROFILE_NAME"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PROFILE_NAME:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_GROUP_ID"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_GROUP_ID:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CLASSIFICATION_ENTITY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_ENTITY:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CLASSIFICATION_TABLE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_TABLE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_CLASSIFICATION_INFO"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_RECORDING_YEAR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RECORDING_YEAR:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_COPYRIGHT_NOTICE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COPYRIGHT_NOTICE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_PERFORMER"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PERFORMER:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_GENRE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_GENRE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_ALBUM_TITLE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ALBUM_TITLE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_ALBUM_TRACK_NUM"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ALBUM_TRACK_NUM:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_RATING_ENTITY"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RATING_ENTITY:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_RATING_CRITERIA"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RATING_CRITERIA:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_RATING_INFO"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RATING_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_KEYWORDS"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_KEYWORDS:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_LOCATION_INFO"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_LOCATION_TYPE"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_LOCATION_LONGITUDE"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_LONGITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_LOCATION_LATITUDE"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_LATITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_LOCATION_ALTITUDE"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_ALTITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_ATTR_TRANSACTION_ID"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_TRANSACTION_ID:Lcom/discretix/drm/api/EDxTextAttribute;

    new-instance v0, Lcom/discretix/drm/api/EDxTextAttribute;

    const-string v1, "DX_NUM_OF_ATTRIBUTES"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxTextAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->DX_NUM_OF_ATTRIBUTES:Lcom/discretix/drm/api/EDxTextAttribute;

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/discretix/drm/api/EDxTextAttribute;

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_ID:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_FILE_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_TITLE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_DESCRIPTION:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_AUTHOR:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RI_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ICON_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_VENDOR:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ENCRYPTION_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COMMON_HDR_VERSION:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PADDING_SCHEME:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_INFO_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COVER_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LYRICS_URI:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_SILENT_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_SILENT_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PREVIEW_METHOD:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PREVIEW_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_URL:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_VERSION:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_LOCATION:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PROFILE_NAME:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_GROUP_ID:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_ENTITY:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_TABLE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RECORDING_YEAR:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_COPYRIGHT_NOTICE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_PERFORMER:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_GENRE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ALBUM_TITLE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_ALBUM_TRACK_NUM:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RATING_ENTITY:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RATING_CRITERIA:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_RATING_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_KEYWORDS:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_LONGITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_LATITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_LOCATION_ALTITUDE:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_TRANSACTION_ID:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/discretix/drm/api/EDxTextAttribute;->DX_NUM_OF_ATTRIBUTES:Lcom/discretix/drm/api/EDxTextAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->$VALUES:[Lcom/discretix/drm/api/EDxTextAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/discretix/drm/api/EDxTextAttribute$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxTextAttribute$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/discretix/drm/api/EDxTextAttribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discretix/drm/api/EDxTextAttribute;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget v0, p3, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    iput v0, p0, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    iget v0, p0, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxTextAttribute$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/discretix/drm/api/EDxTextAttribute;
    .locals 8

    const-class v5, Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/discretix/drm/api/EDxTextAttribute;

    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    if-ne v5, p0, :cond_1

    aget-object v3, v4, p0

    :cond_0
    return-object v3

    :cond_1
    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget v5, v3, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    if-eq v5, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/EDxTextAttribute;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/EDxTextAttribute;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/EDxTextAttribute;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxTextAttribute;->$VALUES:[Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/EDxTextAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/EDxTextAttribute;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/EDxTextAttribute;->swigValue:I

    return v0
.end method
