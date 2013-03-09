.class public Lcom/htc/album/TagUtils/TagPhotoInfo;
.super Ljava/lang/Object;
.source "TagPhotoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TagUtils/TagPhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CLEAR_TOP5:Ljava/lang/String; = "clear_top5_frined_list"

.field public static final KEY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_TAG_ID:Ljava/lang/String; = "tag_id"

.field public static final KEY_TAG_NAME:Ljava/lang/String; = "tag_name"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final MODE_DISP_BOTTOM:I = 0x2

.field public static final MODE_DISP_MIDDLE:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mPhotoH:I

.field private mPhotoId:I

.field private mPhotoW:I

.field private mTagsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/htc/album/TagUtils/TagPhotoInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TagUtils/TagPhotoInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TagUtils/TagPhotoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "TagPhotoInfo"

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 36
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 40
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 41
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "szDataPath"
    .parameter "szMimeType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "TagPhotoInfo"

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 36
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 40
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 41
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 48
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 49
    iput-object p2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "TagPhotoInfo"

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 36
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 40
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 41
    iput v1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 171
    invoke-virtual {p0, p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 172
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoH()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    return v0
.end method

.method public getPhotoID()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    return v0
.end method

.method public getPhotoW()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    return v0
.end method

.method public getTagInfo(I)Lcom/htc/album/TagUtils/TagInfo;
    .locals 6
    .parameter "nIndex"

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 76
    .local v2, tagInfo:Lcom/htc/album/TagUtils/TagInfo;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][TagPhotoInfo][getTagInfo]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    const-class v1, Lcom/htc/album/TagUtils/TagInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 183
    return-void
.end method

.method public realizeIdentity(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, bResult:Z
    iget v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    if-eqz v6, :cond_0

    move v1, v0

    .line 155
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 111
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: realizing..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_1

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    if-nez v6, :cond_2

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: no identity..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 146
    :goto_1
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_2
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: end..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 155
    .restart local v1       #bResult:I
    goto :goto_0

    .line 125
    .end local v1           #bResult:I
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 126
    .local v3, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->imageId()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 127
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    .line 128
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    .line 133
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    .line 138
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    .line 139
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: W: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: H: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 149
    .end local v3           #iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 151
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 152
    iget-object v6, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][TagPhotoInfo][realizeIdentity]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setPhotoID(I)V
    .locals 0
    .parameter "nID"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    .line 55
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
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 188
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mTagsArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 191
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/htc/album/TagUtils/TagPhotoInfo;->mPhotoH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
