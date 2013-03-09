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

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/MediumOp;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Medium;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return v0
.end method

.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLayout1()I
    .locals 1

    const v0, 0x2090025

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoDefault()I
    .locals 1

    const v0, 0x208023c

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Medium;
    .locals 3

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iput v1, v0, Lcom/htc/opensense/social/data/Medium;->type:I

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceOp()Lcom/htc/opensense/social/MediumOp;
    .locals 1

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

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Medium;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HelperUtil;->removeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    iget-wide v0, p1, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    iget v0, p1, Lcom/htc/opensense/social/data/Medium;->type:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURLThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mPhotoTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mszMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mCommentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->mVideoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
