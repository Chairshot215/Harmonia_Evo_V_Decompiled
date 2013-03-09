.class public Lcom/htc/store/module/vo/ItemItem;
.super Ljava/lang/Object;
.source "ItemItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryId:J

.field private mContentType:I

.field private mId:J

.field private mOnlineActionOnClick:Ljava/lang/String;

.field private mOnlineActionTypeOnClick:I

.field private mOnlineAuthor:Ljava/lang/String;

.field private mOnlineCommentCount:J

.field private mOnlineContentURL:Ljava/lang/String;

.field private mOnlineDescription:Ljava/lang/String;

.field private mOnlineDownloadCount:J

.field private mOnlineGenres:Ljava/lang/String;

.field private mOnlineIconURL:Ljava/lang/String;

.field private mOnlineId:Ljava/lang/String;

.field private mOnlineLabel:Ljava/lang/String;

.field private mOnlineLikeCount:J

.field private mOnlineOrder:I

.field private mOnlinePackageName:Ljava/lang/String;

.field private mOnlinePackageType:I

.field private mOnlinePreviewLandscapeURL:Ljava/lang/String;

.field private mOnlinePreviewPortraitURL:Ljava/lang/String;

.field private mOnlinePrice:F

.field private mOnlineReserved:Ljava/lang/String;

.field private mOnlineSimiliarTo:Ljava/lang/String;

.field private mOnlineSize:Ljava/lang/String;

.field private mOnlineSkuId:Ljava/lang/String;

.field private mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

.field private mOnlineSnapshotPortraitURLs:Ljava/lang/String;

.field private mOnlineSource:I

.field private mOnlineTimeStampPublished:J

.field private mOnlineTrialContentURL:Ljava/lang/String;

.field private mOnlineUserComment:Ljava/lang/String;

.field private mOnlineUserFriendsCommentCount:J

.field private mOnlineUserFriendsLikeCount:J

.field private mOnlineUserLike:I

.field private mOnlineUserPurchaseId:Ljava/lang/String;

.field private mOnlineV1Id:Ljava/lang/String;

.field private mOnlineVersionCode:I

.field private mOnlineVersionName:Ljava/lang/String;

.field private mOnlineViewType:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/ItemItem;->TAG:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/htc/store/module/vo/ItemItem$1;

    invoke-direct {v0}, Lcom/htc/store/module/vo/ItemItem$1;-><init>()V

    sput-object v0, Lcom/htc/store/module/vo/ItemItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v3, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    .line 23
    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    .line 24
    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    .line 64
    iput-wide v3, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    .line 65
    iput-wide v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    .line 66
    iput-wide v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    .line 23
    iput v2, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    .line 24
    iput v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mId:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/store/module/vo/ItemItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/store/module/vo/ItemItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 249
    new-instance v0, Lcom/htc/store/module/vo/ItemItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/ItemItem;-><init>()V

    .line 251
    .local v0, result:Lcom/htc/store/module/vo/ItemItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mId:J

    .line 252
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    .line 253
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    .line 254
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    .line 255
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    .line 256
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    .line 257
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    .line 258
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    .line 259
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    .line 260
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    .line 261
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    .line 262
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    .line 263
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    .line 264
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    .line 265
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    .line 266
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    .line 267
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    .line 268
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    .line 270
    const/16 v1, 0x12

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    .line 271
    const/16 v1, 0x13

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    .line 272
    const/16 v1, 0x14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    .line 273
    const/16 v1, 0x15

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    .line 274
    const/16 v1, 0x16

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    .line 275
    const/16 v1, 0x17

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    .line 276
    const/16 v1, 0x18

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    .line 277
    const/16 v1, 0x19

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    .line 278
    const/16 v1, 0x1a

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 279
    const/16 v1, 0x1b

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    .line 280
    const/16 v1, 0x1c

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    .line 281
    const/16 v1, 0x1d

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    .line 282
    const/16 v1, 0x1e

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    .line 283
    const/16 v1, 0x1f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    .line 284
    const/16 v1, 0x20

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    .line 285
    const/16 v1, 0x21

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    .line 286
    const/16 v1, 0x22

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    .line 287
    const/16 v1, 0x23

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    .line 288
    const/16 v1, 0x24

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    .line 289
    const/16 v1, 0x26

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    .line 290
    const/16 v1, 0x27

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    .line 291
    const/16 v1, 0x28

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    .line 293
    return-object v0
.end method


# virtual methods
.method public addSimiliarToItem(Ljava/lang/String;)V
    .locals 4
    .parameter "similiarItem"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1000
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    sget-object v0, Lcom/htc/store/module/vo/ItemItem;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "similiar item is empty, ignore this"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    :goto_0
    return-void

    .line 1003
    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    sget-object v0, Lcom/htc/store/module/vo/ItemItem;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "similiar item contains illegal character, ignore this"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    const-string v0, ";"

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    .line 1009
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryId()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    return-wide v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mId:J

    return-wide v0
.end method

.method public getOnlineActionTypeOnClick()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    return v0
.end method

.method public getOnlineAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineCommentCount()J
    .locals 2

    .prologue
    .line 882
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    return-wide v0
.end method

.method public getOnlineContentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineDownloadCount()J
    .locals 2

    .prologue
    .line 852
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    return-wide v0
.end method

.method public getOnlineGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineLikeCount()J
    .locals 2

    .prologue
    .line 867
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    return-wide v0
.end method

.method public getOnlineOrder()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    return v0
.end method

.method public getOnlinePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePreviewLandscapeURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePreviewPortraitURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePrice()F
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    return v0
.end method

.method public getOnlineReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSnapshotLandscapeURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSnapshotPortraitURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineSource()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    return v0
.end method

.method public getOnlineTimeStampPublished()J
    .locals 2

    .prologue
    .line 792
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    return-wide v0
.end method

.method public getOnlineTrialContentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineTriggerOnClick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineUserFriendsCommentCount()J
    .locals 2

    .prologue
    .line 912
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    return-wide v0
.end method

.method public getOnlineUserFriendsLikeCount()J
    .locals 2

    .prologue
    .line 897
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    return-wide v0
.end method

.method public getOnlineUserHasPurchased()Z
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnlineUserLike()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    return v0
.end method

.method public getOnlineUserPurchaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineV1Id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineVersionCode()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    return v0
.end method

.method public getOnlineVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineViewType()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    return v0
.end method

.method public getSimiliarToItemIds()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 982
    const/4 v0, 0x0

    .line 984
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, swap:Ljava/lang/String;
    sget-object v2, Lcom/htc/store/module/vo/ItemItem;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "make "

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    const/4 v4, 0x2

    const-string v5, " into ArrayList"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 993
    .end local v1           #swap:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 990
    :cond_0
    sget-object v2, Lcom/htc/store/module/vo/ItemItem;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "mSimiliarTo is empty"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    return v0
.end method

.method public isOnlinePackageTypePlugin()Z
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCategoryId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineSkuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePackageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineV1Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineIconURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineSnapshotPortraitURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineSnapshotLandscapeURLs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePreviewPortraitURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePreviewLandscapeURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineContentURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineTrialContentURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineVersionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineAuthor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineTimeStampPublished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionTypeOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineViewType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineDownloadCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineLikeCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineCommentCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineUserFriendsLikeCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineUserFriendsCommentCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineUserLike="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineUserComment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineUserPurchaseId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimiliarTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineReserved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineGenres="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    sget-object v1, Lcom/htc/store/module/vo/ItemItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 447
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    .line 448
    return-void
.end method

.method public setContentType(I)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 462
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    .line 463
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mId:J

    .line 433
    return-void
.end method

.method public setOnlineActionTypeOnClick(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 814
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    .line 815
    return-void
.end method

.method public setOnlineAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter "author"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    .line 770
    return-void
.end method

.method public setOnlineCommentCount(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 889
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    .line 890
    return-void
.end method

.method public setOnlineContentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 622
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setOnlineDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    .line 681
    return-void
.end method

.method public setOnlineDownloadCount(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 859
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    .line 860
    return-void
.end method

.method public setOnlineGenres(Ljava/lang/String;)V
    .locals 0
    .parameter "genres"

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public setOnlineIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setOnlineLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setOnlineLikeCount(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 874
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    .line 875
    return-void
.end method

.method public setOnlineOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 650
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    .line 651
    return-void
.end method

.method public setOnlinePackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    .line 711
    return-void
.end method

.method public setOnlinePackageTypePlugin(Z)V
    .locals 1
    .parameter "isPlugin"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .line 478
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    goto :goto_0
.end method

.method public setOnlinePreviewLandscapeURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    .line 608
    return-void
.end method

.method public setOnlinePreviewPortraitURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setOnlinePrice(F)V
    .locals 0
    .parameter "price"

    .prologue
    .line 665
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    .line 666
    return-void
.end method

.method public setOnlineReserved(Ljava/lang/String;)V
    .locals 0
    .parameter "reservedString"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    .line 1027
    return-void
.end method

.method public setOnlineSize(Ljava/lang/String;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    .line 756
    return-void
.end method

.method public setOnlineSkuId(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineSkuId"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setOnlineSnapshotLansscapeURLs(Ljava/lang/String;)V
    .locals 0
    .parameter "urls"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setOnlineSnapshotPortraitURLs(Ljava/lang/String;)V
    .locals 0
    .parameter "urls"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setOnlineSource(I)V
    .locals 0
    .parameter "source"

    .prologue
    .line 784
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    .line 785
    return-void
.end method

.method public setOnlineTimeStampPublished(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 799
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    .line 800
    return-void
.end method

.method public setOnlineTrialContentURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 636
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public setOnlineTriggerOnClick(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 829
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 830
    return-void
.end method

.method public setOnlineUserComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 951
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    .line 952
    return-void
.end method

.method public setOnlineUserFriendsCommentCount(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    .line 920
    return-void
.end method

.method public setOnlineUserFriendsLikeCount(J)V
    .locals 0
    .parameter "count"

    .prologue
    .line 904
    iput-wide p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    .line 905
    return-void
.end method

.method public setOnlineUserLike(I)V
    .locals 0
    .parameter "hasLiked"

    .prologue
    .line 936
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    .line 937
    return-void
.end method

.method public setOnlineUserPurchaseId(Ljava/lang/String;)V
    .locals 0
    .parameter "Id"

    .prologue
    .line 973
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    .line 974
    return-void
.end method

.method public setOnlineV1Id(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setOnlineVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 740
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    .line 741
    return-void
.end method

.method public setOnlineVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 725
    iput-object p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    .line 726
    return-void
.end method

.method public setOnlineViewType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 844
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    .line 845
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1034
    iput p1, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    .line 1035
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 297
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v1, "content_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v1, "online_package_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "online_v1_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "online_sku_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "online_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "online_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "online_snapshot_portrait_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "online_snapshot_landscape_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "online_preview_portrait_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "online_preview_landscape_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "online_content_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "online_trial_content_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "online_order"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v1, "online_price"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 315
    const-string v1, "online_description"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "online_package_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "online_version_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "online_version_code"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "online_size"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "online_author"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "online_source"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "online_timestamp_publish"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v1, "online_action_type_on_click"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v1, "online_action_on_click"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "online_action_view_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v1, "online_download_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    const-string v1, "online_like_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v1, "online_comment_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string v1, "online_user_friends_like_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    const-string v1, "online_user_friends_comment_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string v1, "online_user_like"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v1, "online_user_comment"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "online_user_purchase_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "online_similar_to"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "online_reserved"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "online_genres"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "status"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    return-object v0
.end method

.method public toContentValuesCommentLikeInfoOnly()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 401
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 402
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "online_like_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    const-string v1, "online_comment_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    const-string v1, "online_user_friends_like_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    const-string v1, "online_user_friends_comment_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    const-string v1, "online_user_like"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v1, "online_user_comment"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-object v0
.end method

.method public toContentValuesDetailPartOnly()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 367
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "content_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v1, "online_package_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "online_v1_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "online_sku_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "online_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "online_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "online_snapshot_portrait_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "online_snapshot_landscape_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "online_price"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 379
    const-string v1, "online_description"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "online_package_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "online_version_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "online_size"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "online_author"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "online_source"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v1, "online_timestamp_publish"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v1, "online_action_view_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v1, "online_genres"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-object v0
.end method

.method public toContentValuesForUIUpdate()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 414
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "online_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object v0
.end method

.method public toContentValuesListPartOnly()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 344
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string v1, "content_type"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "online_v1_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "online_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "online_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "online_preview_portrait_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "online_preview_landscape_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "online_order"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v1, "online_price"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 355
    const-string v1, "online_package_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "online_version_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "online_source"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v1, "online_timestamp_publish"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string v1, "online_action_type_on_click"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v1, "online_action_on_click"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "online_download_count"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string v1, "status"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    return-object v0
.end method

.method public toContentValuesOnlineActionTypeOnClickPartOnly()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "online_action_type_on_click"

    iget v2, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    return-object v0
.end method

.method public toMyActivityItem()Lcom/htc/store/module/vo/MyActivityItem;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/MyActivityItem;-><init>()V

    .line 179
    .local v0, ma:Lcom/htc/store/module/vo/MyActivityItem;
    iget-object v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/MyActivityItem;->setItemIconUrl(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineV1Id(Ljava/lang/String;)V

    .line 183
    iget v1, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    invoke-static {v1}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineContentType(Ljava/lang/String;)V

    .line 184
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineViewType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserLike:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePrice:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 142
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mCategoryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTimeStampPublished:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDownloadCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLikeCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineCommentCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsLikeCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserFriendsCommentCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSkuId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotPortraitURLs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSnapshotLandscapeURLs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewPortraitURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePreviewLandscapeURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineContentURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineTrialContentURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlinePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineUserPurchaseId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineSimiliarTo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineReserved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/htc/store/module/vo/ItemItem;->mOnlineGenres:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return-void
.end method
