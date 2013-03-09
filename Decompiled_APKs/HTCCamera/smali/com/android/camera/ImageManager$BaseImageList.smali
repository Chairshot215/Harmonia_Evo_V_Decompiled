.class abstract Lcom/android/camera/ImageManager$BaseImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;
    }
.end annotation


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field mBucketId:Ljava/lang/String;

.field protected mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mCursorDeactivated:Z

.field mDistinct:Z

.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

.field protected mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

.field protected mMiniThumbData:Ljava/io/RandomAccessFile;

.field mRandom:Ljava/util/Random;

.field mSort:I

.field protected mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    new-instance v0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;-><init>(Lcom/android/camera/ImageManager$BaseImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method private createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 10

    const/16 v9, 0x140

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v4, v9, :cond_0

    if-lt v5, v9, :cond_0

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail([BJII)Z

    :cond_0
    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {v6, v9}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v0, v8, :cond_1

    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    const-string v0, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in createThumbnailFromExif using inSampleSize of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x140

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private createThumbnailFromVendor(Ljava/lang/String;JJI)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v6, 0x140

    const/4 v0, 0x0

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailFromScalado "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "magicid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1, p6, p4, p5}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmapFromVendor(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v2, v6, :cond_1

    if-lt v1, v6, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    :cond_1
    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getMiniThumbFromFile(J[BJ)[B
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v12

    if-nez v12, :cond_0

    const/16 p3, 0x0

    :goto_0
    return-object p3

    :cond_0
    const-wide/16 v13, 0x2710

    mul-long v10, p1, v13

    move-object v4, v12

    monitor-enter v4

    :try_start_0
    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v8

    cmp-long v13, v8, p4

    if-eqz v13, :cond_1

    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; magicCheck: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (fail)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x0

    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13, v7}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v4

    goto :goto_0

    :cond_2
    const/16 p3, 0x0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v5

    :goto_1
    :try_start_5
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t read thumbnail for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; pos is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; length is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-wide/16 v5, -0x1

    goto :goto_1
.end method

.method private getThumbnailPathInMediaFolder(J)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_2

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-object v9

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v10, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/camera/DCFRuler;->getThumbExtension()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v9, ".thumbnails/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private getThumbnailUri(JII)Landroid/net/Uri;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexThumbId()I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const-string v0, "ImageManager"

    const-string v1, "HoneyComb porting check point"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageManager"

    const-string v1, "getThumbnailUri error due to HoneyComb porting"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    if-nez v7, :cond_0

    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "kind"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "image_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    throw v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected activateCursor()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    return-void
.end method

.method public checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 25

    const-wide/16 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->lock()V

    if-nez p1, :cond_1

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v7, -0x1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    :goto_0
    return-wide v7

    :cond_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexId()I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v3, v7, v19

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v18

    if-eqz v18, :cond_3

    monitor-enter v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v19, 0x2710

    mul-long v16, v5, v19

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v19

    const-wide/16 v21, 0x1

    add-long v21, v21, v16

    const-wide/16 v23, 0x8

    add-long v21, v21, v23

    cmp-long v3, v19, v21

    if-ltz v3, :cond_2

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v13

    cmp-long v3, v13, v7

    if-nez v3, :cond_2

    const-wide/16 v19, 0x0

    cmp-long v3, v7, v19

    if-eqz v3, :cond_2

    cmp-long v3, v7, v5

    if-eqz v3, :cond_2

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    throw v3

    :cond_1
    :try_start_8
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageId()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v5

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_9
    const-string v3, "ImageManager"

    const-string v19, "got exception checking file magic: "

    move-object/from16 v0, v19

    invoke-static {v3, v0, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_3
    :try_start_a
    const-string v3, "ImageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "didn\'t verify... fileMagic: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; magic: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    const/4 v15, 0x0

    monitor-enter p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexData()I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_5
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v15, :cond_a

    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5, v6}, Lcom/android/camera/ImageManager$BaseImageList;->createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6}, Lcom/android/camera/ImageManager$BaseImageList;->createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_6
    monitor-enter p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v11, 0x0

    :try_start_d
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexOrientation()I

    move-result v10

    if-ltz v10, :cond_7

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    :cond_7
    if-eqz v11, :cond_9

    invoke-static {v4, v11}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eq v9, v4, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object v4, v9

    :cond_9
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :cond_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    const-wide/16 v19, 0x0

    cmp-long v3, v7, v19

    if-eqz v3, :cond_a

    if-eqz v4, :cond_b

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    monitor-enter p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v3, "ImageManager"

    const-string v19, "HoneyComb porting check point"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ImageManager"

    const-string v19, "checkThumbnail error due to HoneyComb porting"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->requery()Z

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-eqz p1, :cond_c

    move-object/from16 v0, p1

    iput-wide v7, v0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    :cond_c
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    :try_start_10
    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_3
    move-exception v3

    :try_start_12
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_4
    move-exception v3

    :try_start_14
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catchall_5
    move-exception v3

    :try_start_16
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
.end method

.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mini_thumb_magic"

    aput-object v4, v2, v3

    const-string v3, "mini_thumb_magic isnull and (mime_type=? or mime_type=?)"

    invoke-static {}, Lcom/android/camera/ImageManager;->access$400()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id ASC"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>> need to check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ImageManager"

    const-string v1, "bailing from the image checker thread -- no storage"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkThumbnails found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v10, v0, :cond_4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v6, v10}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1, v8, v11}, Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;->checking(II)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ImageManager"

    const-string v1, "got false from checking... break <<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkThumbnails existing after reaching count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v9

    :try_start_4
    const-string v0, "ImageManager"

    const-string v1, "!!!!! failed to check thumbnail... was the sd card removed?"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkThumbnails existing after reaching count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    throw v0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public commitChanges()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    :try_start_0
    const-string v0, "ImageManager"

    const-string v2, "HoneyComb porting check point"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageManager"

    const-string v2, "commitChanges error due to HoneyComb porting"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method computeFitSize([III)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "ImageManager"

    const-string v3, "Invalid Arg"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    int-to-float v2, p2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    int-to-float v2, p3

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    aput p2, p1, v4

    aget v2, p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_0

    :cond_2
    aget v2, p1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, p1, v4

    aput p3, p1, v5

    goto :goto_0
.end method

.method computeSampleSize2([II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    aget v2, p1, v4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aget v2, p1, v3

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {v0, p2}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    aget v2, p1, v4

    div-int/2addr v2, v1

    aput v2, p1, v4

    aget v2, p1, v3

    div-int/2addr v2, v1

    aput v2, p1, v3

    return-void
.end method

.method protected contentUri(J)Landroid/net/Uri;
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const-string v3, "ImageManager"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v0

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump ImageList (count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "ImageManager"

    const-string v4, "end of dump container"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    monitor-exit v0

    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activateCursor()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexOrientation()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexOrientation()I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ImageManager$IImage;

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v1, p0

    move-object/from16 v7, p0

    move/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/camera/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    monitor-exit v12

    :goto_0
    return-object v14

    :catch_0
    move-exception v13

    const/4 v14, 0x0

    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_1
    move-exception v13

    :try_start_3
    const-string v1, "ImageManager"

    const-string v6, "got this exception trying to create image object: "

    invoke-static {v1, v6, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v14, 0x0

    monitor-exit v12

    goto :goto_0

    :cond_3
    const-string v1, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to moveTo to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageManager$BaseImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    goto :goto_1
.end method

.method protected getRowFor(Lcom/android/camera/ImageManager$IImage;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    monitor-exit v0

    move v4, v1

    :goto_0
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const/4 v4, -0x1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected abstract indexData()I
.end method

.method protected abstract indexDateTaken()I
.end method

.method protected abstract indexDescription()I
.end method

.method protected abstract indexDisplayName()I
.end method

.method protected abstract indexId()I
.end method

.method protected abstract indexLatitude()I
.end method

.method protected abstract indexLongitude()I
.end method

.method protected abstract indexMimeType()I
.end method

.method protected abstract indexMiniThumbId()I
.end method

.method protected abstract indexOrientation()I
.end method

.method protected abstract indexPicasaWeb()I
.end method

.method protected abstract indexPrivate()I
.end method

.method protected abstract indexThumbId()I
.end method

.method protected abstract indexTitle()I
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method makeBitmapFromVendor(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v2, 0x2

    new-array v11, v2, [I

    const/4 v9, 0x1

    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeBitmapFromVendor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " magic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " case="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v11}, Lcom/android/camera/Camera_Util;->GetImageSize(Ljava/lang/String;[I)I

    move-result v10

    const/4 v2, 0x1

    if-eq v10, v2, :cond_0

    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scalado not support !!. Cant get info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/camera/Camera_Util;->CheckImageFileSupport(Ljava/lang/String;)Z

    move-result v8

    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CheckImageFileSupport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v2, 0x0

    aget v13, v11, v2

    const/4 v2, 0x1

    aget v12, v11, v2

    const/16 v2, 0x1e0

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    const/16 v2, 0x1e0

    const/16 v4, 0x140

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Bitmap Fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Camera_Util;->PartialDecode(Ljava/lang/String;Landroid/graphics/Bitmap;IIFI)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x140

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/16 v2, 0x1e0

    const/16 v4, 0x140

    invoke-virtual {p0, v11, v2, v4}, Lcom/android/camera/ImageManager$BaseImageList;->computeFitSize([III)V

    :goto_1
    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v4, 0x1

    aget v4, v11, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create Bitmap Fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v11, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    move/from16 v0, p2

    invoke-virtual {p0, v11, v0}, Lcom/android/camera/ImageManager$BaseImageList;->computeSampleSize2([II)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v3, v9}, Lcom/android/camera/Camera_Util;->loadImage(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0
.end method

.method miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 6

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/camera/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!! unable to create .thumbnails directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file f is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-object v3

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method randomAccessFilePath(I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".thumbnails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.thumbdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->onRemove()V

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    :cond_0
    monitor-exit v0

    :goto_0
    return v7

    :catch_0
    move-exception v1

    const-string v4, "ImageManager"

    const-string v5, "removeImage got exception "

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeImageAt(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v5, "before delete"

    invoke-virtual {p0, v5}, Lcom/android/camera/ImageManager$BaseImageList;->dump(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->onRemove()V

    :cond_0
    const-string v5, "after delete"

    invoke-virtual {p0, v5}, Lcom/android/camera/ImageManager$BaseImageList;->dump(Ljava/lang/String;)V

    monitor-exit v0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    :cond_0
    return-void
.end method

.method protected requery()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    return-void
.end method

.method protected saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V
    .locals 8

    const/16 v7, 0x2710

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v5, 0x2710

    mul-long v2, p2, v5

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Lcom/android/camera/ImageManager;->miniThumbData(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v5, v0

    if-le v5, v7, :cond_1

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2710

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_1
    :try_start_2
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeByte(I)V

    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-nez v5, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :goto_1
    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v4, p4, p5}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, p2, p3, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->getThumbnailUri(JII)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ImageManager"

    const-string v4, "unable to store thumbnail: "

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected storeThumbnail([BJII)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/ImageManager$BaseImageList;->getThumbnailUri(JII)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
