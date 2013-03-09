.class public Lcom/htc/MediaCacheService/gallery/IMediaData;
.super Ljava/lang/Object;
.source "IMediaData.java"


# static fields
.field public static final CONTENT_DRM_CD:I = 0x2

.field public static final CONTENT_DRM_FL:I = 0x1

.field public static final CONTENT_DRM_SD:I = 0x3

.field public static final CONTENT_NORMAL:I = 0x0

.field public static final CONTENT_ONLINE:I = -0x1

.field public static final SOURCE_FILE_DESCRIPTOR:I = 0x1

.field public static final SOURCE_FILE_PATH:I = 0x0

.field public static final SOURCE_INPUT_STREAM:I = 0x3

.field public static final SOURCE_PARCEL_FILE_DESCRIPTOR:I = 0x2

.field public static final SOURCE_RESOURCE_ID:I = 0x5

.field public static final SOURCE_URI:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSourceType(Ljava/lang/String;)I
    .locals 1
    .parameter "sData"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
