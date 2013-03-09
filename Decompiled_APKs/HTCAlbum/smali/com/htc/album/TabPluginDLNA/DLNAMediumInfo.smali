.class public Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
.super Ljava/lang/Object;
.source "DLNAMediumInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public mID:Ljava/lang/String;

.field public mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

.field public mIndex:I

.field public mIndexID:J

.field public mIsCorrupt:Z

.field public mIsThumbOnly:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field public mName:Ljava/lang/String;

.field private mQuality:I

.field public mType:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mUriThumb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 23
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 24
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 29
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    .line 30
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    .line 32
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    .line 33
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 34
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 23
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 24
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 29
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    .line 30
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    .line 32
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    .line 33
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 34
    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 64
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I
    .locals 2
    .parameter "mediumInfo"

    .prologue
    .line 43
    instance-of v0, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->compareTo(Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 309
    const v0, 0x7f020007

    return v0
.end method

.method public getCenterText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 274
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 279
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v1

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 145
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 152
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAMediumInfo][getMediaParcelFileDescriptor]: thumb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 175
    :cond_4
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/ImageProvider;->getCachedFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][DLNAMediumInfo][getDisplayImageUri]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaQuality()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 269
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    const-string v1, "4"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDispalyImageWidth(I)V
    .locals 0
    .parameter "nWidth"

    .prologue
    .line 207
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 208
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 227
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemWidth:I

    .line 228
    iput p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 229
    return-void
.end method

.method public setDisplayImageHeight(I)V
    .locals 0
    .parameter "nHeight"

    .prologue
    .line 215
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mItemHeight:I

    .line 216
    return-void
.end method

.method public setIsCorrupt(Z)V
    .locals 0
    .parameter "bIsCorrupt"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsCorrupt:Z

    .line 97
    return-void
.end method

.method public setMediaQuality(I)V
    .locals 0
    .parameter "nQuality"

    .prologue
    .line 295
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mQuality:I

    .line 296
    return-void
.end method

.method public setReferenceImageProvider(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V
    .locals 0
    .parameter "imageProvider"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mImageProvider:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    .line 101
    return-void
.end method

.method public setThumbnailOnly(Z)V
    .locals 0
    .parameter "bThumbnailOnly"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIsThumbOnly:Z

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
