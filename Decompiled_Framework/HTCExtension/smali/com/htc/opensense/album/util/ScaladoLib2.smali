.class public Lcom/htc/opensense/album/util/ScaladoLib2;
.super Ljava/lang/Object;
.source "ScaladoLib2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ScaladoLib2$RenderMode;,
        Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;
    }
.end annotation


# static fields
.field public static final CERR_ABORT_TASK:I = 0x1f

.field public static final CERR_CONSTRUCTION_FAILED:I = 0x2

.field public static final CERR_DATA_CORRUPT:I = 0xa

.field public static final CERR_DIVISION_BY_ZERO:I = 0x1c

.field public static final CERR_FILE_ACCESS_DENIED:I = 0x6

.field public static final CERR_FILE_NOT_FOUND:I = 0x5

.field public static final CERR_FILE_POS_FAILED:I = 0x19

.field public static final CERR_FILE_READ_FAILED:I = 0x15

.field public static final CERR_FILE_REMOVE_FAILED:I = 0x17

.field public static final CERR_FILE_SEEK_FAILED:I = 0x18

.field public static final CERR_FILE_WRITE_FAILED:I = 0x16

.field public static final CERR_FILTER_CONNECTION_FAILED:I = 0xd

.field public static final CERR_ILLEGAL_CALL:I = 0x9

.field public static final CERR_ILLEGAL_FILTER:I = 0xe

.field public static final CERR_IMAGE_CORRUPT:I = 0xb

.field public static final CERR_INCOMPATIBLE_IMAGE:I = 0x13

.field public static final CERR_INCOMPATIBLE_VERSION:I = 0x1a

.field public static final CERR_INCOMPLETE_IMAGE:I = 0x1b

.field public static final CERR_INTERNAL_ERROR:I = 0x11

.field public static final CERR_INVALID_COLORMODE:I = 0x1e

.field public static final CERR_INVALID_FILTER_GRAPH:I = 0xf

.field public static final CERR_INVALID_PARAMETER:I = 0xc

.field public static final CERR_ITEM_NOT_FOUND:I = 0x8

.field public static final CERR_LIBRARY_LOAD_FAILED:I = 0x3

.field public static final CERR_LIBRARY_UNLOAD_FAILED:I = 0x4

.field public static final CERR_MEMALLOC_FAILED:I = 0x1

.field public static final CERR_MEMORY_OUT_OF_BOUNDS:I = 0x12

.field public static final CERR_NOT_IMPLEMENTED:I = 0x7

.field public static final CERR_OK:I = -0xff

.field public static final CERR_OPERATION_FAILED:I = 0x1d

.field public static final CERR_RENDER_INCOMPLETE:I = -0x1

.field public static final CERR_TASK_COMPLETE:I = -0xfe

.field public static final CERR_TLS_FAILURE:I = 0x10

.field public static final CERR_UNSUPPORTED_IMAGE:I = 0x14

.field public static final SCALADOLIB_ALLOC_FAIL:I = -0x5

.field public static final SCALADOLIB_DECODE_FINISH:I = 0x1

.field public static final SCALADOLIB_EMPTY_HANDLE:I = -0x2

.field public static final SCALADOLIB_ENCODE_FINISH:I = 0x2

.field public static final SCALADOLIB_FAILED:I = -0x1

.field public static final SCALADOLIB_INVALID_HANDLE:I = -0x3

.field public static final SCALADOLIB_INVALID_PARAMETER:I = -0x4

.field public static final SCALADOLIB_JPS_LEFT_PART:I = 0x1

.field public static final SCALADOLIB_JPS_RIGHT_PART:I = 0x2

.field public static final SCALADOLIB_JPS_SIDEBYSIDE:I = 0x3

.field public static final SCALADOLIB_LOAD_FINISH:I = 0x3

.field public static final SCALADOLIB_MPO_TYPE_DISPARITY:I = 0x2

.field public static final SCALADOLIB_MPO_TYPE_MULTIANGLE:I = 0x3

.field public static final SCALADOLIB_MPO_TYPE_PANORAMA:I = 0x1

.field public static final SCALADOLIB_MPO_TYPE_UNKNOWN:I = 0x0

.field public static final SCALADOLIB_OK:I = 0x0

.field public static final SCALADOLIB_PREFER_5MB_SIZE:I = 0x0

.field public static final SCALADOLIB_PREFER_ORIGINAL_SIZE:I = -0x1

.field public static final SCALADOLIB_SCALE_FILL:I = 0x2

.field public static final SCALADOLIB_SCALE_FIT:I = 0x1

.field public static final SCALADOLIB_SCALE_FOR_3D:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ScaladoLib"

.field private static sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "scalado_htcalbum2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ScaladoLib2;->nativeBegin()V

    return-void
.end method

.method public static sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    return-object v0
.end method


# virtual methods
.method public native AbortHQDecode()V
.end method

.method public native AbortHQDecodeStream()V
.end method

.method public native AbortLoadImage()V
.end method

.method public native AbortPartialDecode()V
.end method

.method public native DecodeFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)I
.end method

.method public native DecodeHQImage(Landroid/graphics/Bitmap;Ljava/lang/String;I)I
.end method

.method public native DecodeHQImageStream(Landroid/graphics/Bitmap;Ljava/io/FileDescriptor;I)I
.end method

.method public native DoCrop(Ljava/io/FileDescriptor;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
.end method

.method public native DoCrop(Ljava/lang/String;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
.end method

.method public native DoCropBySource(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
.end method

.method public native LoadImage(Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;)I
.end method

.method public native LoadImage2(Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;)I
.end method

.method public native LoadImageStream(Ljava/io/FileDescriptor;ILandroid/graphics/Bitmap;)I
.end method

.method public native LoadImageWithStream(Ljava/io/InputStream;ILandroid/graphics/Bitmap;)I
.end method

.method public native OnConfigChange(II)V
.end method

.method public native PartialDecodePan(Landroid/graphics/Bitmap;IIIZ)I
.end method

.method public native PartialDecodeZoom(Landroid/graphics/Bitmap;IIIII)I
.end method

.method public Release()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ScaladoLib2;->nativeRelease()V

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    return-void
.end method

.method public native Release(I)V
.end method

.method public native Reset(I)V
.end method

.method public native ResetCurrentToOri(I)V
.end method

.method public convert3DTo2D(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 8

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->convert3DTo2DBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeBegin(Landroid/graphics/Bitmap;Ljava/lang/String;III)I

    move-result v7

    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v7, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeEnd(I)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public convert3DTo2DBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 13

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    const-string v10, "image/mpo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "image/jps"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v10, v8, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v8, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    const-string v10, "image/jps"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    :cond_5
    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    :cond_6
    :goto_1
    const-string v10, "image/mpo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v8, v11, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v2, :cond_8

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_2
    if-eqz v8, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_9
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v10, "r"

    invoke-virtual {v4, p2, v10}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    :cond_a
    if-eqz v6, :cond_6

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v6, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_b
    :goto_3
    if-eqz v8, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    if-eqz v2, :cond_c

    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_c
    :goto_4
    if-eqz v8, :cond_d

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    :cond_d
    throw v10

    :catch_1
    move-exception v10

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_3

    :catch_3
    move-exception v11

    goto :goto_4
.end method

.method public native decodeBegin()I
.end method

.method public native decodeEnd(I)Landroid/graphics/Bitmap;
.end method

.method public decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public native decodeIterate(IJ)I
.end method

.method public native encodeBegin(Landroid/graphics/Bitmap;Ljava/lang/String;III)I
.end method

.method public native encodeEnd(I)I
.end method

.method public native encodeIterate(IJ)I
.end method

.method public native getError(I)I
.end method

.method public native getHeight(I)I
.end method

.method public native getMPOPhotosCount(I)I
.end method

.method public native getMPOType(I)I
.end method

.method public native getParallaxValue(IIZ)I
.end method

.method public native getWidth(I)I
.end method

.method public native isJPSHalfHeight(I)Z
.end method

.method public native isJPSHalfWidth(I)Z
.end method

.method public native isProgressiveJpeg(I)Z
.end method

.method public native loadFDIterate(IJ)I
.end method

.method public native loadFilePathIterate(IJ)I
.end method

.method public native loadFromBitmap(ILandroid/graphics/Bitmap;II)I
.end method

.method public native loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
.end method

.method public native loadFromFilePath(ILjava/lang/String;)I
.end method

.method public native loadFromFilePath(ILjava/lang/String;Z)I
.end method

.method public native loadFromInputStream(ILjava/io/InputStream;Z)I
.end method

.method public native loadInputStreamIterate(IJ)I
.end method

.method public native nativeBegin()V
.end method

.method public native nativeRelease()V
.end method

.method public native setBitmapColorDepth(II)I
.end method

.method public native setBufferSize(II)V
.end method

.method public native setDefaultBitmapColorDepth(I)V
.end method

.method public native setDegree(II)I
.end method

.method public native setJPSDecodePart(II)I
.end method

.method public native setLoadFromExifFirst(IZ)I
.end method

.method public native setLoadFromSPMOFirst(IZ)I
.end method

.method public native setMPOMonoIndex(II)I
.end method

.method public native setMPOStereoIndexs(III)I
.end method

.method public native setPreferSize(III)I
.end method

.method public native setScaleType(II)I
.end method
