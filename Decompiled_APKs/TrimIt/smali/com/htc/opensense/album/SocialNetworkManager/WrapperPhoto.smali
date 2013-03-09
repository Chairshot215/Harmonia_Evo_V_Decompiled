.class public Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
.super Ljava/lang/Object;
.source "WrapperPhoto.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCommentCount:I

.field private mDescription:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mName:Ljava/lang/String;

.field private mPhotoLink:Ljava/lang/String;

.field private mPhotoTime:J

.field private mPhotoURL:Ljava/lang/String;

.field private mPhotoURLThumb:Ljava/lang/String;

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mVideoUri:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;

.field private mszMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->LOG_TAG:Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 31
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 34
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 31
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 34
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 199
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/MediumOp;)V
    .locals 3
    .parameter "mediumOp"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 31
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 34
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Medium;)V
    .locals 3
    .parameter "medium"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 31
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 34
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return v0
.end method

.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLayout1()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x2090025

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoDefault()I
    .locals 1

    .prologue
    .line 159
    const v0, 0x208023c

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Medium;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, profile:Lcom/htc/opensense/social/data/Medium;
    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Medium;
    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 81
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Medium;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    .line 87
    iget-wide v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    .line 88
    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput v1, v0, Lcom/htc/opensense/social/data/Medium;->type:I

    .line 89
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public getSourceOp()Lcom/htc/opensense/social/MediumOp;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo()Z
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    if-ne v1, v2, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "nCount"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    .line 95
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "szMimeType"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Medium;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    .line 65
    iget-wide v0, p1, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    .line 66
    iget v0, p1, Lcom/htc/opensense/social/data/Medium;->type:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    .line 67
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    .line 76
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
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 233
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return-void
.end method
