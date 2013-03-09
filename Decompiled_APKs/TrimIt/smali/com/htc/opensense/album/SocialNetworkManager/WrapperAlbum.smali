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

    .prologue
    .line 21
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->LOG_TAG:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 32
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 32
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 144
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->readFromParcel(Landroid/os/Parcel;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/AlbumOp;)V
    .locals 3
    .parameter "albumOp"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 32
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    .line 45
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Album;)V
    .locals 3
    .parameter "album"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 26
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 32
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    .line 49
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, nResult:I
    const/4 v2, 0x0

    .line 194
    .local v2, szName:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 206
    .end local v0           #nResult:I
    .end local p1
    .local v1, nResult:I
    :goto_0
    return v1

    .line 197
    .end local v1           #nResult:I
    .restart local v0       #nResult:I
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    .line 199
    check-cast p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 200
    .end local v0           #nResult:I
    .restart local v1       #nResult:I
    goto :goto_0

    .line 202
    .end local v1           #nResult:I
    .restart local v0       #nResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v1, v0

    .line 206
    .end local v0           #nResult:I
    .restart local v1       #nResult:I
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 175
    .local v2, szName:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 186
    .end local v0           #bResult:Z
    .end local p1
    .local v1, bResult:I
    :goto_0
    return v1

    .line 178
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    .line 180
    check-cast p1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 181
    .restart local v1       #bResult:I
    goto :goto_0

    .line 183
    .end local v1           #bResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    move v1, v0

    .line 186
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    return v0
.end method

.method public getCoverURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 100
    iget-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/htc/opensense/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    return-object v0

    .line 102
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultLayout1()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x2090025

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Album;
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, profile:Lcom/htc/opensense/social/data/Album;
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Album;
    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 67
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Album;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 70
    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput v1, v0, Lcom/htc/opensense/social/data/Album;->count:I

    .line 71
    iget-wide v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 72
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    .line 73
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Album;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 57
    iget v0, p1, Lcom/htc/opensense/social/data/Album;->count:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 58
    iget-wide v0, p1, Lcom/htc/opensense/social/data/Album;->createTime:J

    iput-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 59
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense/album/util/SeparatorTag;

    .line 117
    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-wide v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return-void
.end method
