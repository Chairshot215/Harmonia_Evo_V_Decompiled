.class public Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
.super Ljava/lang/Object;
.source "WrapperAlbum.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCount:I

.field private mCover:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

.field private mSzSeparatorName:Ljava/lang/String;

.field private mTime:J

.field private mszDateTime:Ljava/lang/String;

.field private mszWebLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/AlbumOp;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Album;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    return v0
.end method

.method public getCoverURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/htc/opensense/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultLayout1()I
    .locals 1

    const v0, 0x2090025

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Album;
    .locals 3

    const/4 v0, 0x0

    new-instance v0, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput v1, v0, Lcom/htc/opensense/social/data/Album;->count:I

    iget-wide v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Album;->createTime:J

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Album;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iget v0, p1, Lcom/htc/opensense/social/data/Album;->count:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iget-wide v0, p1, Lcom/htc/opensense/social/data/Album;->createTime:J

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
