.class public Lcom/htc/photowidget3d/image/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/image/ImageManager$1;,
        Lcom/htc/photowidget3d/image/ImageManager$EmptyImageList;,
        Lcom/htc/photowidget3d/image/ImageManager$DataLocation;,
        Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final INCLUDE_ALL_IMAGES:I = 0xf

.field public static final INCLUDE_ALL_TYPES:I = 0xff

.field public static final INCLUDE_ALL_VIDEOS:I = 0xf0

.field public static final INCLUDE_DRM_CD_IMAGES:I = 0x4

.field public static final INCLUDE_DRM_CD_VIDEOS:I = 0x40

.field public static final INCLUDE_DRM_FL_IMAGES:I = 0x2

.field public static final INCLUDE_DRM_FL_VIDEOS:I = 0x20

.field public static final INCLUDE_DRM_IMAGES:I = 0xe

.field public static final INCLUDE_DRM_SD_IMAGES:I = 0x8

.field public static final INCLUDE_DRM_SD_VIDEOS:I = 0x80

.field public static final INCLUDE_DRM_VIDEOS:I = 0xe0

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_NORMAL_MEDIAS:I = 0x11

.field public static final INCLUDE_SETTABLE_IMAGES:I = 0x3

.field public static final INCLUDE_SHAREABLE_IMAGES:I = 0x9

.field public static final INCLUDE_SHAREABLE_VIDEOS:I = 0x90

.field public static final INCLUDE_VIDEOS:I = 0x10

.field public static final MIME_JPG:Ljava/lang/String; = "image/jpeg"

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 55
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/htc/photowidget3d/image/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/photowidget3d/image/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 12
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 234
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 237
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 238
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p9, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 250
    :goto_0
    invoke-static {v7}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 253
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 254
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v9, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v9, "orientation"

    const/4 v10, 0x0

    aget v10, p9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p4, :cond_1

    .line 266
    const-string v9, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 267
    const-string v9, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 270
    :cond_1
    sget-object v9, Lcom/htc/photowidget3d/image/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v7

    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object v9

    .line 240
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :cond_2
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 241
    const/4 v9, 0x0

    invoke-static {v5}, Lcom/htc/photowidget3d/image/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    aput v10, p9, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 243
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 244
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v3, ex:Ljava/io/FileNotFoundException;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    const/4 v9, 0x0

    .line 250
    invoke-static {v6}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 246
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 247
    .local v3, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    const/4 v9, 0x0

    .line 250
    invoke-static {v6}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v6}, Lcom/htc/photowidget3d/image/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 246
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 243
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v4

    .line 516
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 522
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v4, 0x1

    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;-><init>()V

    .line 485
    .local v0, param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 486
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, degree:I
    const/4 v2, 0x0

    .line 277
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 281
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 282
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 284
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 286
    packed-switch v4, :pswitch_data_0

    .line 300
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 289
    goto :goto_1

    .line 291
    :pswitch_2
    const/16 v0, 0xb4

    .line 292
    goto :goto_1

    .line 294
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    .locals 8
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    const/4 v4, 0x0

    .line 460
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/htc/photowidget3d/image/ImageManager;->getImageListParam(Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method

.method public static getImageListParam(Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "bucketName"
    .parameter "folderType"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 465
    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;-><init>()V

    .line 466
    .local v0, param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mLocation:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    .line 467
    iput p1, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mInclusion:I

    .line 468
    iput p2, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSort:I

    .line 469
    iput-object p3, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 470
    iput-object p4, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketDisplayName:Ljava/lang/String;

    .line 471
    iput-object p5, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mFolderType:Ljava/lang/String;

    .line 472
    iput-object p6, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereClause:Ljava/lang/String;

    .line 473
    iput-object p7, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereArgs:[Ljava/lang/String;

    .line 474
    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    .locals 1
    .parameter "uri"

    .prologue
    .line 478
    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;-><init>()V

    .line 479
    .local v0, param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 480
    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/photowidget3d/image/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 537
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    if-eqz p0, :cond_0

    .line 541
    invoke-static {}, Lcom/htc/photowidget3d/image/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 546
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/htc/photowidget3d/image/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 214
    invoke-interface {p0}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/photowidget3d/image/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 198
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 569
    const/4 v7, 0x0

    .line 570
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/photowidget3d/image/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 573
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 575
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 576
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 578
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_1
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 415
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeCollectionList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)Lcom/htc/photowidget3d/image/IImageList;
    .locals 10
    .parameter "cr"
    .parameter "param"

    .prologue
    .line 306
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 307
    :cond_0
    const/4 v8, 0x0

    .line 329
    :goto_0
    return-object v8

    .line 314
    :cond_1
    iget-object v4, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 315
    .local v4, bucketId:Ljava/lang/String;
    iget-object v5, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereClause:Ljava/lang/String;

    .line 316
    .local v5, whereClause:Ljava/lang/String;
    iget-object v6, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mWhereArgs:[Ljava/lang/String;

    .line 317
    .local v6, whereArgs:[Ljava/lang/String;
    iget v3, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSort:I

    .line 318
    .local v3, sort:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v7, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/photowidget3d/image/BaseImageList;>;"
    new-instance v0, Lcom/htc/photowidget3d/image/CustImageList;

    sget-object v2, Lcom/htc/photowidget3d/image/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/photowidget3d/image/CustImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 323
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/photowidget3d/image/BaseImageList;

    .line 324
    .local v8, list:Lcom/htc/photowidget3d/image/BaseImageList;
    goto :goto_0

    .line 327
    .end local v8           #list:Lcom/htc/photowidget3d/image/BaseImageList;
    :cond_2
    new-instance v9, Lcom/htc/photowidget3d/image/ImageListUber;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/htc/photowidget3d/image/IImageList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/photowidget3d/image/IImageList;

    invoke-direct {v9, v0, v3}, Lcom/htc/photowidget3d/image/ImageListUber;-><init>([Lcom/htc/photowidget3d/image/IImageList;I)V

    .local v9, uber:Lcom/htc/photowidget3d/image/ImageListUber;
    move-object v8, v9

    .line 329
    goto :goto_0
.end method

.method public static makeEmptyImageList()Lcom/htc/photowidget3d/image/IImageList;
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/photowidget3d/image/ImageManager;->getEmptyImageListParam()Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/image/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/htc/photowidget3d/image/IImageList;
    .locals 5
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, uriString:Ljava/lang/String;
    :goto_0
    const-string v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    sget-object v2, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const/16 v3, 0xe

    invoke-static {p0, v2, v3, p2, v4}, Lcom/htc/photowidget3d/image/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v2

    .line 409
    :goto_1
    return-object v2

    .line 393
    .end local v1           #uriString:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 402
    .restart local v1       #uriString:Ljava/lang/String;
    :cond_1
    const-string v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    sget-object v2, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const/16 v3, 0x10

    invoke-static {p0, v2, v3, p2, v4}, Lcom/htc/photowidget3d/image/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v2

    goto :goto_1

    .line 405
    :cond_2
    invoke-static {v1}, Lcom/htc/photowidget3d/image/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    invoke-static {p0, p1}, Lcom/htc/photowidget3d/image/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v2

    goto :goto_1

    .line 408
    :cond_3
    const-string v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, bucketId:Ljava/lang/String;
    sget-object v2, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2, v0}, Lcom/htc/photowidget3d/image/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v2

    goto :goto_1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Lcom/htc/photowidget3d/image/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "bucketId"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "sort"

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/photowidget3d/image/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 491
    invoke-static {p1, p2, p3, p4}, Lcom/htc/photowidget3d/image/ImageManager;->getImageListParam(Lcom/htc/photowidget3d/image/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    move-result-object v0

    .line 493
    .local v0, param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/htc/photowidget3d/image/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)Lcom/htc/photowidget3d/image/IImageList;
    .locals 14
    .parameter "cr"
    .parameter "param"

    .prologue
    const/4 v13, 0x0

    .line 335
    iget-object v7, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mLocation:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    .line 336
    .local v7, location:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;
    iget v2, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mInclusion:I

    .line 337
    .local v2, inclusion:I
    iget v8, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mSort:I

    .line 338
    .local v8, sort:I
    iget-object v0, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 339
    .local v0, bucketId:Ljava/lang/String;
    iget-boolean v3, p1, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 341
    .local v3, isEmptyImageList:Z
    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 342
    :cond_0
    new-instance v6, Lcom/htc/photowidget3d/image/ImageManager$EmptyImageList;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/htc/photowidget3d/image/ImageManager$EmptyImageList;-><init>(Lcom/htc/photowidget3d/image/ImageManager$1;)V

    .line 381
    :goto_0
    return-object v6

    .line 346
    :cond_1
    invoke-static {v13}, Lcom/htc/photowidget3d/image/ImageManager;->hasStorage(Z)Z

    move-result v1

    .line 349
    .local v1, haveSdCard:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v5, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/photowidget3d/image/BaseImageList;>;"
    if-eqz v1, :cond_2

    sget-object v11, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->INTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    if-eq v7, v11, :cond_2

    .line 352
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_2

    .line 353
    new-instance v11, Lcom/htc/photowidget3d/image/ImageList;

    sget-object v12, Lcom/htc/photowidget3d/image/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/htc/photowidget3d/image/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_2
    sget-object v11, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->INTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    if-eq v7, v11, :cond_3

    sget-object v11, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    if-ne v7, v11, :cond_4

    .line 357
    :cond_3
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_4

    .line 358
    new-instance v11, Lcom/htc/photowidget3d/image/ImageList;

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/htc/photowidget3d/image/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 366
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/photowidget3d/image/BaseImageList;>;"
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 367
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/photowidget3d/image/BaseImageList;

    .line 368
    .local v9, sublist:Lcom/htc/photowidget3d/image/BaseImageList;
    invoke-virtual {v9}, Lcom/htc/photowidget3d/image/BaseImageList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 369
    invoke-virtual {v9}, Lcom/htc/photowidget3d/image/BaseImageList;->close()V

    .line 370
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 374
    .end local v9           #sublist:Lcom/htc/photowidget3d/image/BaseImageList;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 375
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/photowidget3d/image/BaseImageList;

    .line 376
    .local v6, list:Lcom/htc/photowidget3d/image/BaseImageList;
    goto :goto_0

    .line 379
    .end local v6           #list:Lcom/htc/photowidget3d/image/BaseImageList;
    :cond_7
    new-instance v10, Lcom/htc/photowidget3d/image/ImageListUber;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/htc/photowidget3d/image/IImageList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/htc/photowidget3d/image/IImageList;

    invoke-direct {v10, v11, v8}, Lcom/htc/photowidget3d/image/ImageListUber;-><init>([Lcom/htc/photowidget3d/image/IImageList;I)V

    .local v10, uber:Lcom/htc/photowidget3d/image/ImageListUber;
    move-object v6, v10

    .line 381
    goto :goto_0
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/htc/photowidget3d/image/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 501
    invoke-static {p1}, Lcom/htc/photowidget3d/image/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/photowidget3d/image/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 557
    if-nez p0, :cond_0

    .line 563
    :goto_0
    return-object v1

    .line 560
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
