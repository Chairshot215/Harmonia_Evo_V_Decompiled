.class public abstract Lcom/htc/photowidget3d/image/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/htc/photowidget3d/image/IImage;


# static fields
.field public static final QUALITY_CORRUPT:I = 0x2

.field public static final QUALITY_EXIF:I = 0x0

.field public static final QUALITY_FULL:I = 0x1

.field public static final QUALITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected mContainer:Lcom/htc/photowidget3d/image/BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPath:Ljava/lang/String;

.field private final mDateModified:J

.field private final mDateTaken:J

.field private mFileCorrupted:Z

.field private final mFileSize:J

.field private mHeight:I

.field protected mId:J

.field protected final mIndex:I

.field protected mMimeType:Ljava/lang/String;

.field private mQuality:I

.field private mQualityLocker:Ljava/lang/Object;

.field private mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/htc/photowidget3d/image/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 2
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

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mQuality:I

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mQualityLocker:Ljava/lang/Object;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mFileCorrupted:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mWidth:I

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mHeight:I

    .line 72
    iput-object p1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContainer:Lcom/htc/photowidget3d/image/BaseImageList;

    .line 73
    iput-object p2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iput-wide p3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mId:J

    .line 75
    iput p5, p0, Lcom/htc/photowidget3d/image/BaseImage;->mIndex:I

    .line 76
    iput-object p6, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    .line 77
    iput-object p7, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDataPath:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/htc/photowidget3d/image/BaseImage;->mMimeType:Ljava/lang/String;

    .line 79
    iput-wide p9, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDateTaken:J

    .line 80
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mTitle:Ljava/lang/String;

    .line 82
    iput-wide p11, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDateModified:J

    .line 83
    iput-wide p13, p0, Lcom/htc/photowidget3d/image/BaseImage;->mFileSize:J

    .line 84
    return-void
.end method

.method private setupDimension()V
    .locals 6

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 158
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 159
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    invoke-static {}, Lcom/htc/photowidget3d/image/BitmapManager;->instance()Lcom/htc/photowidget3d/image/BitmapManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/htc/photowidget3d/image/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 162
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mWidth:I

    .line 163
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-static {v1}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 170
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mWidth:I

    .line 166
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-static {v1}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/htc/photowidget3d/image/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 93
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/htc/photowidget3d/image/Image;

    .end local p1
    iget-object v1, p1, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fileCorrupt()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mFileCorrupted:Z

    .line 223
    return-void
.end method

.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"

    .prologue
    .line 102
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/photowidget3d/image/BaseImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"
    .parameter "useNative"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContainer:Lcom/htc/photowidget3d/image/BaseImageList;

    iget-wide v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/photowidget3d/image/BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, url:Landroid/net/Uri;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v1, v2, p4}, Lcom/htc/photowidget3d/image/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/photowidget3d/image/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getBitmapQuality()I
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mQualityLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mQuality:I

    monitor-exit v1

    return v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContainer()Lcom/htc/photowidget3d/image/IImageList;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContainer:Lcom/htc/photowidget3d/image/BaseImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDateModified:J

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mFileSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/photowidget3d/image/BaseImage;->setupDimension()V

    .line 179
    :cond_0
    iget v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/photowidget3d/image/BaseImage;->setupDimension()V

    .line 174
    :cond_0
    iget v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mFileCorrupted:Z

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 183
    const/4 v7, 0x0

    .line 185
    .local v7, b:Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v2, p0, Lcom/htc/photowidget3d/image/BaseImage;->mId:J

    .line 186
    .local v2, id:J
    invoke-static {}, Lcom/htc/photowidget3d/image/BitmapManager;->instance()Lcom/htc/photowidget3d/image/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/photowidget3d/image/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 192
    if-eqz v7, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/BaseImage;->getDegreesRotated()I

    move-result v0

    invoke-static {v7, v0}, Lcom/htc/photowidget3d/image/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    move-object v0, v7

    .line 195
    .end local v2           #id:J
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v8

    .line 189
    .local v8, ex:Ljava/lang/Throwable;
    const-string v0, "BaseImage"

    const-string v1, "miniThumbBitmap got exception"

    invoke-static {v0, v1, v8}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    .line 190
    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public resetCorruptState()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mFileCorrupted:Z

    .line 241
    return-void
.end method

.method public setBitmapQuality(I)V
    .locals 2
    .parameter "quality"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mQualityLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iput p1, p0, Lcom/htc/photowidget3d/image/BaseImage;->mQuality:I

    .line 248
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/photowidget3d/image/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
