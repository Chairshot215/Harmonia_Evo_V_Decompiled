.class abstract Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;
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
            "Lcom/htc/opensense/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field mCursorDeactivated:Z

.field mDistinct:Z

.field mHandler:Landroid/os/Handler;

.field protected mIsFavorite:Z

.field mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

.field protected mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

.field protected mMiniThumbData:Ljava/io/RandomAccessFile;

.field mRandom:Ljava/util/Random;

.field mSort:I

.field protected mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;

.field protected mWhereStatement:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "where"
    .parameter "isFavorite"

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    .line 1144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    .line 1438
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    .line 1440
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;-><init>(Lcom/htc/opensense/album/util/ImageManager$BaseImageList;)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    .line 1158
    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    .line 1159
    iput p5, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mSort:I

    .line 1160
    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    .line 1161
    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 1162
    iput-object p6, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    .line 1163
    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 1164
    iput-object p7, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    .line 1165
    iput-boolean p8, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    .line 1166
    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/util/ImageManager$BaseImageList;J[BJ)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1133
    invoke-direct/range {p0 .. p5}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method private createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "id"

    .prologue
    const/16 v9, 0x140

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1521
    if-eqz p1, :cond_2

    .line 1522
    const/4 v1, 0x0

    .line 1523
    .local v1, thumbData:[B
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v2

    monitor-enter v2

    .line 1524
    :try_start_0
    invoke-static {p1}, Lcom/htc/opensense/album/util/ExifUtil;->getExifThumbnail(Ljava/lang/String;)[B

    move-result-object v1

    .line 1525
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    if-eqz v1, :cond_2

    .line 1529
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1530
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1531
    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1532
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1533
    .local v4, width:I
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1540
    .local v5, height:I
    if-lt v4, v9, :cond_0

    if-lt v5, v9, :cond_0

    move-object v0, p0

    move-wide v2, p2

    .line 1541
    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->storeThumbnail([BJII)Z

    .line 1555
    :cond_0
    invoke-static {v6, v9}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1557
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v0, v8, :cond_1

    .line 1558
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1563
    :cond_1
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1564
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1565
    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1566
    array-length v0, v1

    invoke-static {v1, v7, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1571
    .end local v1           #thumbData:[B
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 1525
    .restart local v1       #thumbData:[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1571
    .end local v1           #thumbData:[B
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1577
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1578
    .local v1, uri:Landroid/net/Uri;
    const/16 v2, 0x140

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1579
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    .line 1585
    :goto_0
    return-object v0

    .line 1582
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1583
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$300()I

    move-result v2

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getMiniThumbFromFile(J[BJ)[B
    .locals 16
    .parameter "id"
    .parameter "data"
    .parameter "magicCheck"

    .prologue
    .line 1937
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v12

    .line 1938
    .local v12, r:Ljava/io/RandomAccessFile;
    if-nez v12, :cond_0

    .line 1939
    const/16 p3, 0x0

    .line 1967
    .end local p3
    :goto_0
    return-object p3

    .line 1941
    .restart local p3
    :cond_0
    const-wide/16 v13, 0x2710

    mul-long v10, p1, v13

    .line 1942
    .local v10, pos:J
    move-object v4, v12

    .line 1943
    .local v4, f:Ljava/io/RandomAccessFile;
    monitor-enter v4

    .line 1945
    :try_start_0
    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1946
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 1947
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 1948
    .local v8, magic:J
    cmp-long v13, v8, p4

    if-eqz v13, :cond_1

    .line 1950
    const/16 p3, 0x0

    .end local p3
    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 1969
    .end local v8           #magic:J
    :catchall_0
    move-exception v13

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 1952
    .restart local v8       #magic:J
    .restart local p3
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 1953
    .local v7, length:I
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13, v7}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1954
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 1956
    .end local v7           #length:I
    .end local v8           #magic:J
    :cond_2
    const/16 p3, 0x0

    .end local p3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1958
    .restart local p3
    :catch_0
    move-exception v2

    .line 1961
    .local v2, ex:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v5

    .line 1966
    .local v5, fileLength:J
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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const/16 p3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1962
    .end local v5           #fileLength:J
    :catch_1
    move-exception v3

    .line 1963
    .local v3, ex1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1964
    const-wide/16 v5, -0x1

    .restart local v5       #fileLength:J
    goto :goto_1
.end method

.method private getThumbnailPath(J)Ljava/lang/String;
    .locals 14
    .parameter "id"

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v9

    .line 1293
    .local v9, size:I
    const/4 v5, 0x0

    .line 1294
    .local v5, m:Lcom/htc/opensense/album/util/ImageManager$IImage;
    const/4 v4, 0x0

    .line 1295
    .local v4, isFound:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 1296
    invoke-virtual {p0, v3}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v5

    .line 1297
    if-nez v5, :cond_1

    .line 1295
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1300
    :cond_1
    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v11

    cmp-long v11, v11, p1

    if-nez v11, :cond_0

    .line 1301
    const/4 v4, 0x1

    .line 1306
    :cond_2
    if-nez v4, :cond_3

    .line 1307
    const/4 v11, 0x0

    .line 1342
    :goto_1
    return-object v11

    .line 1310
    :cond_3
    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    .line 1311
    .local v7, s:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 1312
    const/4 v11, 0x0

    goto :goto_1

    .line 1314
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1317
    .local v6, nameindex:I
    if-gtz v6, :cond_5

    .line 1318
    const/4 v11, 0x0

    goto :goto_1

    .line 1320
    :cond_5
    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1321
    .local v1, extindex:I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sub-int v2, v11, v1

    .line 1322
    .local v2, extsize:I
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v11, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1323
    .local v8, sequence:Ljava/lang/String;
    if-nez v8, :cond_6

    .line 1324
    const/4 v11, 0x0

    goto :goto_1

    .line 1326
    :cond_6
    const-string v11, ".thm"

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1328
    const/4 v11, 0x0

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1329
    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1330
    add-int v11, v1, v2

    invoke-virtual {v0, v1, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1331
    const-string v11, ".thm"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1333
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v10

    .line 1337
    .local v10, thumbnail_path:Ljava/lang/String;
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    const-string v11, "ImageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getThumbnailPath:  name"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1333
    .end local v10           #thumbnail_path:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method private getThumbnailPathInMediaFolder(J)Ljava/lang/String;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1346
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v8

    .line 1348
    .local v8, size:I
    const/4 v4, 0x0

    .line 1349
    .local v4, m:Lcom/htc/opensense/album/util/ImageManager$IImage;
    const/4 v3, 0x0

    .line 1350
    .local v3, isFound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 1351
    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v4

    .line 1352
    if-nez v4, :cond_1

    .line 1350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1355
    :cond_1
    invoke-interface {v4}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_0

    .line 1356
    const/4 v3, 0x1

    .line 1361
    :cond_2
    if-nez v3, :cond_4

    .line 1394
    :cond_3
    :goto_1
    return-object v9

    .line 1365
    :cond_4
    invoke-interface {v4}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 1366
    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1369
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1372
    .local v5, nameindex:I
    if-lez v5, :cond_3

    .line 1375
    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1377
    .local v1, extindex:I
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v10, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1378
    .local v7, sequence:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1381
    const-string v9, ".thm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1385
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1386
    const-string v9, ".thumbnails/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1387
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private getThumbnailUri(JII)Landroid/net/Uri;
    .locals 11
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1401
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-object v7

    .line 1405
    :cond_1
    const/4 v7, 0x0

    .line 1406
    .local v7, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1408
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$200()[Ljava/lang/String;

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

    .line 1414
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexThumbId()I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1422
    :cond_2
    if-eqz v6, :cond_3

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1427
    :cond_3
    if-nez v7, :cond_0

    .line 1428
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1429
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1430
    const-string v0, "image_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1431
    const-string v0, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    const-string v0, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1433
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 1422
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 1794
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 1795
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    .line 1796
    monitor-exit v1

    .line 1797
    return-void

    .line 1796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected activateCursor()V
    .locals 0

    .prologue
    .line 1867
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    .line 1868
    return-void
.end method

.method public checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 27
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 1590
    const-wide/16 v14, 0x0

    .line 1592
    .local v14, fileMagic:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->lock()V

    .line 1593
    if-nez p1, :cond_1

    .line 1596
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1597
    :try_start_1
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1598
    const-wide/16 v8, -0x1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    :goto_0
    return-wide v8

    .line 1600
    :cond_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1601
    .local v8, magic:J
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexId()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1602
    .local v6, id:J
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1609
    :goto_1
    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_3

    .line 1612
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v19

    .line 1613
    .local v19, r:Ljava/io/RandomAccessFile;
    if-eqz v19, :cond_3

    .line 1614
    monitor-enter v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1615
    const-wide/16 v21, 0x2710

    mul-long v17, v6, v21

    .line 1618
    .local v17, pos:J
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21

    const-wide/16 v23, 0x1

    add-long v23, v23, v17

    const-wide/16 v25, 0x8

    add-long v23, v23, v25

    cmp-long v4, v21, v23

    if-ltz v4, :cond_2

    .line 1619
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1620
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 1621
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v14

    .line 1622
    cmp-long v4, v14, v8

    if-nez v4, :cond_2

    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_2

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    .line 1623
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto :goto_0

    .line 1602
    .end local v6           #id:J
    .end local v8           #magic:J
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1695
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    throw v4

    .line 1605
    :cond_1
    :try_start_8
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 1606
    .restart local v8       #magic:J
    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageId()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v6

    .restart local v6       #id:J
    goto :goto_1

    .line 1627
    .restart local v17       #pos:J
    .restart local v19       #r:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v13

    .line 1628
    .local v13, ex:Ljava/io/IOException;
    :try_start_9
    const-string v4, "ImageManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "got exception checking file magic: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    .end local v13           #ex:Ljava/io/IOException;
    :cond_2
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1639
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    :cond_3
    const/4 v5, 0x0

    .line 1641
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 1642
    .local v16, filePath:Ljava/lang/String;
    :try_start_a
    monitor-enter p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1643
    :try_start_b
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1644
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1646
    :cond_4
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1648
    if-eqz v16, :cond_9

    .line 1649
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1651
    if-nez v5, :cond_5

    .line 1652
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->createThumbnailFromUri(Landroid/database/Cursor;J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1654
    :cond_5
    monitor-enter p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1655
    const/4 v12, 0x0

    .line 1656
    .local v12, degrees:I
    :try_start_d
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v11

    .line 1658
    .local v11, column:I
    if-ltz v11, :cond_6

    .line 1659
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1661
    .end local v11           #column:I
    :cond_6
    if-eqz v12, :cond_8

    .line 1662
    invoke-static {v5, v12}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1663
    .local v10, b2:Landroid/graphics/Bitmap;
    if-eq v10, v5, :cond_7

    .line 1664
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1665
    :cond_7
    move-object v5, v10

    .line 1667
    .end local v10           #b2:Landroid/graphics/Bitmap;
    :cond_8
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1672
    .end local v12           #degrees:I
    :cond_9
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    .line 1673
    const-wide/16 v21, 0x0

    cmp-long v4, v8, v21

    if-eqz v4, :cond_9

    .line 1674
    if-eqz v5, :cond_a

    move-object/from16 v4, p0

    .line 1675
    invoke-virtual/range {v4 .. v9}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 1676
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1679
    :cond_a
    monitor-enter p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1680
    :try_start_f
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1681
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1682
    .local v20, values:Landroid/content/ContentValues;
    const-string v4, "mini_thumb_magic"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1686
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->requery()Z

    .line 1687
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1689
    if-eqz p1, :cond_b

    .line 1690
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 1692
    :cond_b
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mLock:Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto/16 :goto_0

    .line 1630
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v17       #pos:J
    .restart local v19       #r:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v4

    :try_start_10
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1646
    .end local v17           #pos:J
    .end local v19           #r:Ljava/io/RandomAccessFile;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    :catchall_3
    move-exception v4

    :try_start_12
    monitor-exit p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1667
    .restart local v12       #degrees:I
    :catchall_4
    move-exception v4

    :try_start_14
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1693
    .end local v12           #degrees:I
    :catchall_5
    move-exception v4

    :try_start_16
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
.end method

.method public checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 17
    .parameter "cb"

    .prologue
    .line 1700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mini_thumb_magic"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mini_thumb_magic isnull and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    #calls: Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(Z)Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/opensense/album/util/ImageManager;->access$400(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "_id ASC"

    invoke-static/range {v1 .. v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1708
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1709
    const-string v1, "ImageManager"

    const-string v2, "Images.Media.query fail"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1712
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1716
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1718
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v16

    .line 1719
    .local v16, oldPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v12

    .line 1720
    .local v12, isPhoneStorage:Z
    if-eqz v12, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v13

    .line 1723
    .local v13, isReady:Z
    :goto_1
    if-eqz v13, :cond_0

    .line 1730
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v15, oldFile:Ljava/io/File;
    if-nez v8, :cond_2

    .line 1735
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1741
    if-eqz v7, :cond_0

    .line 1745
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1746
    .local v14, max:I
    const/4 v9, 0x0

    .line 1747
    .local v9, current:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge v11, v1, :cond_3

    .line 1749
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v11}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1754
    if-eqz p1, :cond_5

    .line 1755
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v9, v14}, Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;->checking(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 1765
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1766
    :catch_0
    move-exception v10

    .line 1768
    .local v10, ex:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1720
    .end local v9           #current:I
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v11           #i:I
    .end local v13           #isReady:Z
    .end local v14           #max:I
    .end local v15           #oldFile:Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v13

    goto :goto_1

    .line 1750
    .restart local v9       #current:I
    .restart local v11       #i:I
    .restart local v13       #isReady:Z
    .restart local v14       #max:I
    .restart local v15       #oldFile:Ljava/io/File;
    :catch_1
    move-exception v10

    .line 1751
    .restart local v10       #ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!! failed to check thumbnail... was the sd card removed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1763
    .end local v9           #current:I
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v11           #i:I
    .end local v14           #max:I
    :catchall_0
    move-exception v1

    .line 1765
    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1769
    :goto_4
    throw v1

    .line 1760
    .restart local v9       #current:I
    .restart local v11       #i:I
    .restart local v14       #max:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 1747
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1766
    .end local v9           #current:I
    .end local v11           #i:I
    .end local v14           #max:I
    :catch_2
    move-exception v10

    .line 1768
    .restart local v10       #ex:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public closeCursor()V
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1823
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-nez v0, :cond_1

    .line 1824
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 1826
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1827
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1829
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public commitChanges()V
    .locals 2

    .prologue
    .line 1774
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 1776
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    .line 1777
    monitor-exit v1

    .line 1778
    return-void

    .line 1777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method computeFitSize([III)V
    .locals 6
    .parameter "nResult"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1498
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-nez v2, :cond_1

    .line 1499
    :cond_0
    const-string v2, "ImageManager"

    const-string v3, "computeFitSize, Invalid Arg"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :goto_0
    return-void

    .line 1503
    :cond_1
    int-to-float v2, p2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1504
    .local v0, rateX:F
    int-to-float v2, p3

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1505
    .local v1, rateY:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 1506
    aput p2, p1, v4

    .line 1507
    aget v2, p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_0

    .line 1509
    :cond_2
    aget v2, p1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, p1, v4

    .line 1510
    aput p3, p1, v5

    goto :goto_0
.end method

.method computeSampleSize2([II)V
    .locals 5
    .parameter "nResult"
    .parameter "nTargetWidthHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1479
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1482
    .local v0, Options:Landroid/graphics/BitmapFactory$Options;
    aget v2, p1, v4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1483
    aget v2, p1, v3

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1484
    invoke-static {v0, p2}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    .line 1485
    .local v1, nRate:I
    if-ge v1, v3, :cond_0

    .line 1486
    const/4 v1, 0x0

    .line 1487
    :cond_0
    aget v2, p1, v4

    div-int/2addr v2, v1

    aput v2, p1, v4

    .line 1488
    aget v2, p1, v3

    div-int/2addr v2, v1

    aput v2, p1, v3

    .line 1489
    return-void
.end method

.method protected contentUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "id"

    .prologue
    .line 1783
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1784
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    .line 1785
    const-string v3, "ImageManager"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    .end local v1           #existingId:J
    :goto_0
    return-object v3

    .line 1787
    :catch_0
    move-exception v0

    .line 1789
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 1800
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 1803
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1804
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    .line 1812
    :try_start_1
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1813
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1818
    :cond_1
    :goto_1
    return-void

    .line 1806
    :catch_0
    move-exception v0

    .line 1808
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1814
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1815
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1847
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1848
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1849
    const/4 v1, -0x1

    .line 1851
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1855
    const-string v0, "ImageManager"

    const-string v1, "cursor had been closed"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const/4 v0, 0x0

    .line 1862
    :goto_0
    return-object v0

    .line 1858
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 1859
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 1860
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->activateCursor()V

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit v1

    goto :goto_0

    .line 1863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 16
    .parameter "i"

    .prologue
    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1872
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_0

    const/4 v14, 0x0

    .line 1905
    :goto_0
    return-object v14

    .line 1873
    :cond_0
    monitor-enter v12

    .line 1877
    :try_start_0
    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1881
    .local v15, moved:Z
    if-eqz v15, :cond_4

    .line 1883
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1884
    .local v2, id:J
    const-wide/16 v4, 0x0

    .line 1885
    .local v4, miniThumbId:J
    const/4 v11, 0x0

    .line 1886
    .local v11, rotation:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 1887
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1889
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexOrientation()I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1892
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1893
    .local v8, timestamp:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 1894
    .local v14, img:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v14, :cond_3

    .line 1895
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v1, p0

    move-object/from16 v7, p0

    move/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v14

    .line 1896
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1898
    :cond_3
    :try_start_2
    monitor-exit v12

    goto :goto_0

    .line 1907
    .end local v2           #id:J
    .end local v4           #miniThumbId:J
    .end local v8           #timestamp:J
    .end local v11           #rotation:I
    .end local v14           #img:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v15           #moved:Z
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1878
    :catch_0
    move-exception v13

    .line 1879
    .local v13, ex:Ljava/lang/Exception;
    const/4 v14, 0x0

    :try_start_3
    monitor-exit v12

    goto :goto_0

    .line 1899
    .end local v13           #ex:Ljava/lang/Exception;
    .restart local v15       #moved:Z
    :catch_1
    move-exception v13

    .line 1900
    .restart local v13       #ex:Ljava/lang/Exception;
    const-string v1, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got this exception trying to create image object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const/4 v14, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 1904
    .end local v13           #ex:Ljava/lang/Exception;
    :cond_4
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

    invoke-static {v1, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const/4 v14, 0x0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 1922
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1923
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    .line 1924
    .local v1, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 1925
    invoke-interface {v1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 1926
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1927
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1933
    .end local v1           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v2           #path:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1922
    .restart local v1       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1933
    .end local v1           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 2
    .parameter "uri"

    .prologue
    .line 1912
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1918
    :goto_0
    return-object v1

    .line 1913
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1914
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1915
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_0

    .line 1913
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1918
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1154
    const-string v0, "BaseImageList"

    return-object v0
.end method

.method protected getRowFor(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 7
    .parameter "imageObj"

    .prologue
    const/4 v4, -0x1

    .line 1972
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1973
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move v1, v4

    .line 1985
    :goto_0
    return v1

    .line 1974
    :cond_0
    monitor-enter v0

    .line 1975
    const/4 v1, 0x0

    .line 1976
    .local v1, index:I
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    .line 1977
    .local v2, targetId:J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1979
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_2

    .line 1980
    monitor-exit v0

    goto :goto_0

    .line 1986
    .end local v2           #targetId:J
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1982
    .restart local v2       #targetId:J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1983
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1985
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    goto :goto_0
.end method

.method protected abstract indexBucketName()I
.end method

.method protected abstract indexData()I
.end method

.method protected abstract indexDateAdded()I
.end method

.method protected abstract indexDateModified()I
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

.method public isFavoriteList()Z
    .locals 1

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 1
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 2092
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    .line 1188
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 1189
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 1190
    .local v3, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1192
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1193
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!! unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-object v4

    .line 1200
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1201
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method randomAccessFilePath(I)Ljava/lang/String;
    .locals 4
    .parameter "version"

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1177
    .local v0, directoryName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 1181
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".thumbdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1184
    .local v1, path:Ljava/lang/String;
    return-object v1

    .line 1177
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected removeFavoriteImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 4
    .parameter "image"

    .prologue
    const/4 v3, 0x0

    .line 2011
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2012
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "favorite"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2013
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2014
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->onRemove()V

    .line 2015
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    .line 2017
    const/4 v1, 0x1

    return v1
.end method

.method protected removeFavoriteImageAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2021
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v0

    .line 2022
    .local v0, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 2031
    :goto_0
    return-void

    .line 2025
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2026
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "favorite"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2028
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2029
    invoke-interface {v0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->onRemove()V

    .line 2030
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    goto :goto_0
.end method

.method protected removeFavoriteImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 12
    .parameter "items"

    .prologue
    const/4 v8, 0x1

    .line 2044
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 2089
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2049
    .local v6, values:Landroid/content/ContentValues;
    const-string v9, "favorite"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2054
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2058
    .local v5, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/util/ImageManager$IImage;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2060
    .local v7, where:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2061
    .local v1, cnt:I
    :goto_2
    const/4 v4, 0x0

    .line 2062
    .local v4, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    new-array v0, v1, [Ljava/lang/String;

    .line 2064
    .local v0, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 2065
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    check-cast v4, Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 2066
    .restart local v4       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    invoke-interface {v4}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 2067
    if-nez v3, :cond_3

    .line 2068
    const-string v9, "_id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cnt:I
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_2
    move v1, v8

    .line 2060
    goto :goto_2

    .line 2070
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #cnt:I
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_3
    const-string v9, "OR _id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2081
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cnt:I
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v5           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/util/ImageManager$IImage;>;"
    .end local v7           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 2082
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query ERROR = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2074
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #cnt:I
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .restart local v5       #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/util/ImageManager$IImage;>;"
    .restart local v7       #where:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v9}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2077
    iget-object v9, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v6, v11, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2080
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cnt:I
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v7           #where:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->startRequery()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2088
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->startRequery()Z

    goto/16 :goto_0
.end method

.method public removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 8
    .parameter "image"

    .prologue
    const/4 v4, 0x0

    .line 2098
    iget-boolean v5, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v5, :cond_1

    .line 2099
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeFavoriteImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    move-result v4

    .line 2127
    :cond_0
    :goto_0
    return v4

    .line 2101
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2105
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 2106
    monitor-enter v0

    .line 2114
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getRow()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2119
    .local v2, moved:Z
    if-eqz v2, :cond_2

    .line 2120
    :try_start_1
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 2121
    .local v3, u:Landroid/net/Uri;
    const-string v5, "ImageManager"

    const-string v6, "delete base image"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2123
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->onRemove()V

    .line 2124
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    .line 2126
    .end local v3           #u:Landroid/net/Uri;
    :cond_2
    monitor-exit v0

    goto :goto_0

    .end local v2           #moved:Z
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2115
    :catch_0
    move-exception v1

    .line 2116
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeImage got exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 8
    .parameter "i"

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2136
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2166
    :goto_0
    return-void

    .line 2137
    :cond_0
    monitor-enter v0

    .line 2143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v2

    .line 2144
    .local v2, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v2, :cond_1

    .line 2145
    monitor-exit v0

    goto :goto_0

    .line 2165
    .end local v2           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2147
    .restart local v2       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v5, :cond_2

    .line 2148
    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeFavoriteImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    .line 2149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2154
    :cond_2
    :try_start_2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 2158
    .local v3, moved:Z
    if-eqz v3, :cond_3

    .line 2159
    :try_start_3
    invoke-interface {v2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 2160
    .local v4, u:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2161
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->requery()V

    .line 2162
    invoke-interface {v2}, Lcom/htc/opensense/album/util/ImageManager$IImage;->onRemove()V

    .line 2165
    .end local v4           #u:Landroid/net/Uri;
    :cond_3
    monitor-exit v0

    goto :goto_0

    .line 2155
    .end local v3           #moved:Z
    :catch_0
    move-exception v1

    .line 2156
    .local v1, ex:Ljava/lang/Exception;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeImages([I[I[I[I)V
    .locals 0
    .parameter "nouse1"
    .parameter "nouse2"
    .parameter "nouse3"
    .parameter "nouse4"

    .prologue
    .line 2215
    return-void
.end method

.method public removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 14
    .parameter "images"

    .prologue
    const/4 v13, 0x1

    .line 2169
    iget-boolean v9, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mIsFavorite:Z

    if-eqz v9, :cond_1

    .line 2170
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->removeFavoriteImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2174
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2175
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2176
    monitor-enter v1

    .line 2180
    const/4 v7, 0x0

    .line 2181
    .local v7, where:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2183
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2184
    .local v6, totalInd:I
    array-length v5, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, totalCnt:I
    move-object v8, v7

    .line 2185
    .end local v7           #where:Ljava/lang/StringBuilder;
    .local v8, where:Ljava/lang/StringBuilder;
    :goto_1
    if-ge v6, v5, :cond_6

    .line 2186
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2187
    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local v7       #where:Ljava/lang/StringBuilder;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2188
    const/4 v3, 0x0

    .line 2189
    .local v3, i:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_2

    .line 2190
    aget-object v4, p1, v6

    .line 2191
    .local v4, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v3, :cond_3

    .line 2192
    const-string v9, "_id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    :goto_3
    invoke-interface {v4}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    add-int/lit8 v6, v6, 0x1

    .line 2198
    if-ne v6, v5, :cond_4

    .line 2201
    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_2
    iget-object v9, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v9}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    if-eqz v9, :cond_5

    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2210
    .end local v0           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v5           #totalCnt:I
    .end local v6           #totalInd:I
    :catchall_0
    move-exception v9

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 2194
    .restart local v0       #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .restart local v5       #totalCnt:I
    .restart local v6       #totalInd:I
    :cond_3
    :try_start_4
    const-string v9, "OR _id=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 2206
    .end local v0           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v5           #totalCnt:I
    .end local v6           #totalInd:I
    :catch_0
    move-exception v2

    .line 2207
    .local v2, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v9, "ImageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query ERROR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2189
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v4       #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .restart local v5       #totalCnt:I
    .restart local v6       #totalInd:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2202
    .end local v4           #image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    :cond_5
    :try_start_6
    iget-object v10, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v8, v7

    .line 2203
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local v8       #where:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 2205
    .end local v3           #i:I
    :cond_6
    :try_start_7
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->startRequery()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 2210
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 2206
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local v8       #where:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_5
.end method

.method public removeOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1
    .parameter "changeCallback"

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    .line 2219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    .line 2220
    :cond_0
    return-void
.end method

.method protected requery()V
    .locals 5

    .prologue
    .line 2223
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 2224
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2227
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 2228
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 2229
    .local v1, result:Z
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseImageList cursor requery result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    .end local v1           #result:Z
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 2240
    return-void

    .line 2231
    :cond_1
    :try_start_1
    const-string v2, "ImageManager"

    const-string v3, "BaseImageList cursor is null"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2234
    :catch_0
    move-exception v0

    .line 2236
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V
    .locals 0
    .parameter "source"
    .parameter "id"
    .parameter "magic"

    .prologue
    .line 2244
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    .line 2289
    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mHandler:Landroid/os/Handler;

    .line 2290
    return-void
.end method

.method protected storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "thumb"
    .parameter "imageId"

    .prologue
    .line 1214
    return-object p1
.end method

.method protected storeThumbnail([BJII)Z
    .locals 1
    .parameter "jpegThumbnail"
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1255
    const/4 v0, 0x0

    return v0
.end method
