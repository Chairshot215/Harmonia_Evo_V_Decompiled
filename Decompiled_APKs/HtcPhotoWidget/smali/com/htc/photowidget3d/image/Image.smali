.class public Lcom/htc/photowidget3d/image/Image;
.super Lcom/htc/photowidget3d/image/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/htc/photowidget3d/image/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mExif:Landroid/media/ExifInterface;

.field private mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/photowidget3d/image/Image;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 17
    .parameter "uri"
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "title"

    .prologue
    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p4

    move-object/from16 v15, p6

    invoke-direct/range {v0 .. v16}, Lcom/htc/photowidget3d/image/Image;-><init>(Lcom/htc/photowidget3d/image/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/htc/photowidget3d/image/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V
    .locals 1
    .parameter "container"
    .parameter "cr"
    .parameter "id"
    .parameter "index"
    .parameter "uri"
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "dateModified"
    .parameter "fileSize"
    .parameter "title"
    .parameter "rotation"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p15}, Lcom/htc/photowidget3d/image/BaseImage;-><init>(Lcom/htc/photowidget3d/image/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 55
    move/from16 v0, p16

    iput v0, p0, Lcom/htc/photowidget3d/image/Image;->mRotation:I

    .line 56
    return-void
.end method

.method private loadExifData()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/photowidget3d/image/Image;->mExif:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BaseImage"

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, v0}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveExifData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/photowidget3d/image/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/photowidget3d/image/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 107
    :cond_0
    return-void
.end method

.method private setExifRotation(I)V
    .locals 5
    .parameter "degrees"

    .prologue
    .line 111
    :try_start_0
    rem-int/lit16 p1, p1, 0x168

    .line 112
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 114
    :cond_0
    const/4 v1, 0x1

    .line 115
    .local v1, orientation:I
    sparse-switch p1, :sswitch_data_0

    .line 130
    :goto_0
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/photowidget3d/image/Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/Image;->saveExifData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1           #orientation:I
    :goto_1
    return-void

    .line 117
    .restart local v1       #orientation:I
    :sswitch_0
    const/4 v1, 0x1

    .line 118
    goto :goto_0

    .line 120
    :sswitch_1
    const/4 v1, 0x6

    .line 121
    goto :goto_0

    .line 123
    :sswitch_2
    const/4 v1, 0x3

    .line 124
    goto :goto_0

    .line 126
    :sswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 133
    .end local v1           #orientation:I
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BaseImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to save exif data with new orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/photowidget3d/image/Image;->mRotation:I

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/photowidget3d/image/Image;->mExif:Landroid/media/ExifInterface;

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/Image;->loadExifData()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 2
    .parameter "degrees"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/Image;->getDegreesRotated()I

    move-result v1

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x168

    .line 145
    .local v0, newDegrees:I
    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/image/Image;->setExifRotation(I)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/image/Image;->setDegreesRotated(I)V

    .line 148
    const/4 v1, 0x1

    return v1
.end method

.method protected setDegreesRotated(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget v1, p0, Lcom/htc/photowidget3d/image/Image;->mRotation:I

    if-ne v1, p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    iput p1, p0, Lcom/htc/photowidget3d/image/Image;->mRotation:I

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "orientation"

    iget v2, p0, Lcom/htc/photowidget3d/image/Image;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    .line 174
    return-void
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "rotateAsNeeded"

    .prologue
    const/4 v6, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 159
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 160
    invoke-static {}, Lcom/htc/photowidget3d/image/BitmapManager;->instance()Lcom/htc/photowidget3d/image/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mId:J

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/photowidget3d/image/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 163
    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/Image;->getDegreesRotated()I

    move-result v0

    invoke-static {v7, v0}, Lcom/htc/photowidget3d/image/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 167
    :cond_0
    return-object v7
.end method
