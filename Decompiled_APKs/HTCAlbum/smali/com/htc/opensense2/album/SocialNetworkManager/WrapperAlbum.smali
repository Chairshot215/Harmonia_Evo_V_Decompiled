.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
.super Ljava/lang/Object;
.source "WrapperAlbum.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCount:I

.field private mCover:Ljava/lang/String;

.field private mDateModified:J

.field private mDateTime:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFolderName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mIndex:I

.field private mIsCorrupt:Z

.field private mName:Ljava/lang/String;

.field private mPID:Ljava/lang/String;

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field private mSize:J

.field private mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation
.end field

.field private mSzSeparatorName:Ljava/lang/String;

.field private mTime:J

.field private mszDateTime:Ljava/lang/String;

.field private mszWebLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->LOG_TAG:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 48
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 50
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 61
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 62
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 65
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 66
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 67
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 48
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 50
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 61
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 62
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 65
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 66
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 67
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 182
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->readFromParcel(Landroid/os/Parcel;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/AlbumOp;)V
    .locals 5
    .parameter "albumOp"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 48
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 50
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 61
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 62
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 65
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 66
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 67
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    .line 75
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Album;)V
    .locals 5
    .parameter "album"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 48
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 50
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    .line 61
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 62
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFolderName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 65
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSize:J

    .line 66
    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateModified:J

    .line 67
    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 78
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setProfile(Lcom/htc/opensense/social/data/Album;)V

    .line 79
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, nResult:I
    const/4 v2, 0x0

    .line 234
    .local v2, szName:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 245
    .end local v0           #nResult:I
    .end local p1
    .local v1, nResult:I
    :goto_0
    return v1

    .line 237
    .end local v1           #nResult:I
    .restart local v0       #nResult:I
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    .line 239
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 240
    .end local v0           #nResult:I
    .restart local v1       #nResult:I
    goto :goto_0

    .line 242
    .end local v1           #nResult:I
    .restart local v0       #nResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v1, v0

    .line 245
    .end local v0           #nResult:I
    .restart local v1       #nResult:I
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 215
    .local v2, szName:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 226
    .end local v0           #bResult:Z
    .end local p1
    .local v1, bResult:I
    :goto_0
    return v1

    .line 218
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v3, :cond_3

    .line 220
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    .line 221
    .restart local v1       #bResult:I
    goto :goto_0

    .line 223
    .end local v1           #bResult:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    move v1, v0

    .line 226
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, ""

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    return v0
.end method

.method public getCoverURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 138
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-static {p1, v0, v1}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszDateTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 378
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 383
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDefaultLayout1()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x2090025

    return v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Album;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, profile:Lcom/htc/opensense/social/data/Album;
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Album;
    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 97
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Album;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 100
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    iput v1, v0, Lcom/htc/opensense/social/data/Album;->count:I

    .line 101
    iget-wide v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    iput-wide v1, v0, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 102
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    .line 103
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 373
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "szDateTime"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mDateTime:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 9
    .parameter "szUrl"
    .parameter "uri"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 261
    if-eqz p2, :cond_0

    .line 262
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    .line 264
    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-direct {v0, v2, v5}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 265
    .local v0, image:Lcom/htc/album/TabPluginDevice/FolderImage;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    move v6, v5

    move-wide v7, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TabPluginDevice/FolderImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    .line 266
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][WrapperAlbum][setFilePath] mFilePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 249
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIndex:I

    .line 250
    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0
    .parameter "bIsCorrupt"

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mIsCorrupt:Z

    .line 254
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szText"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPID(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Album;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    .line 87
    iget v0, p1, Lcom/htc/opensense/social/data/Album;->count:I

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    .line 88
    iget-wide v0, p1, Lcom/htc/opensense/social/data/Album;->createTime:J

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    .line 89
    iget-object v0, p1, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 155
    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mSzSeparatorName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mszWebLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->mPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return-void
.end method
