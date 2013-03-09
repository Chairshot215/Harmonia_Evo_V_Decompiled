.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
.super Ljava/lang/Object;
.source "WrapperPhoto.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataOnline;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCommentCount:I

.field private mDescription:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIndex:I

.field private mIsCorrupt:Z

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mName:Ljava/lang/String;

.field private mPhotoHeight:I

.field private mPhotoLink:Ljava/lang/String;

.field private mPhotoTime:J

.field private mPhotoURL:Ljava/lang/String;

.field private mPhotoURLThumb:Ljava/lang/String;

.field private mPhotoWidth:I

.field private mQuality:I

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateID:I

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mUriThumb:Landroid/net/Uri;

.field private mVideoUri:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;

.field private mszMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->LOG_TAG:Ljava/lang/String;

    .line 212
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 57
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 58
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 59
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 60
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 64
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 65
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 66
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 67
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 69
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 70
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 75
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 57
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 58
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 59
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 60
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 64
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 65
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 66
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 67
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 69
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 70
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 226
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->readFromParcel(Landroid/os/Parcel;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/MediumOp;)V
    .locals 5
    .parameter "mediumOp"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 57
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 58
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 59
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 60
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 64
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 65
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 66
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 67
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 69
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 70
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Medium;)V
    .locals 5
    .parameter "medium"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 50
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 51
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 54
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 57
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 58
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 59
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 60
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 64
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 65
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 66
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 67
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 69
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 70
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 83
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 84
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 482
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 487
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLayout1()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x2090025

    return v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, szUri:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    if-nez v1, :cond_2

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_1
    :goto_0
    return-object v0

    .line 347
    :cond_2
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    if-ne v2, v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 390
    .local v0, nHeight:I
    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 376
    .local v0, nWidth:I
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataOnline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoDefault()I
    .locals 1

    .prologue
    .line 195
    const v0, 0x208023c

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Medium;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, profile:Lcom/htc/opensense/social/data/Medium;
    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Medium;
    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 112
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Medium;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    .line 118
    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    .line 119
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput v1, v0, Lcom/htc/opensense/social/data/Medium;->type:I

    .line 120
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 122
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 477
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSourceOp()Lcom/htc/opensense/social/MediumOp;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    if-ne v1, v2, :cond_0

    .line 465
    const/4 v0, 0x1

    .line 467
    :cond_0
    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "nCount"

    .prologue
    .line 134
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 135
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 363
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "szUrl"
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    if-eqz p2, :cond_0

    .line 288
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    .line 289
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 293
    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 294
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 295
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 296
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 297
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    .line 315
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    return-void

    .line 290
    :cond_1
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    goto :goto_0

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    if-eqz p2, :cond_0

    .line 304
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    .line 305
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 308
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    .restart local v0       #opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 311
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoWidth:I

    .line 312
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoHeight:I

    goto :goto_1
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 272
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIndex:I

    .line 273
    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0
    .parameter "bIsCorrupt"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mIsCorrupt:Z

    .line 269
    return-void
.end method

.method public setMediaQuality(I)V
    .locals 0
    .parameter "nQuality"

    .prologue
    .line 318
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mQuality:I

    .line 319
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "szMimeType"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Medium;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 100
    iget-wide v0, p1, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 101
    iget v0, p1, Lcom/htc/opensense/social/data/Medium;->type:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 102
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method public setTemplateID(I)V
    .locals 0
    .parameter "nID"

    .prologue
    .line 276
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTemplateID:I

    .line 277
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 261
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return-void
.end method
