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

    .prologue
    .line 40
    const-string v0, "scalado_htcalbum2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ScaladoLib2;->nativeBegin()V

    .line 157
    return-void
.end method

.method public static sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/htc/opensense/album/util/ScaladoLib2;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/ScaladoLib2;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    .line 163
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

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ScaladoLib2;->nativeRelease()V

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/ScaladoLib2;->sScaladoLib:Lcom/htc/opensense/album/util/ScaladoLib2;

    .line 169
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
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "outputPath"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "scaleType"

    .prologue
    .line 594
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 602
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

    .line 596
    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->convert3DTo2DBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 597
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 599
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

    .line 600
    .local v7, handle:I
    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v7, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->encodeIterate(IJ)I

    move-result v0

    if-eqz v0, :cond_2

    .line 602
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
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "preferWidth"
    .parameter "preferHeight"
    .parameter "scaleType"

    .prologue
    .line 527
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v9, 0x0

    .line 588
    :cond_1
    :goto_0
    return-object v9

    .line 528
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

    .line 530
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v8

    .line 531
    .local v8, handle:I
    if-nez v8, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    .line 533
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v10, v8, v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 534
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v8, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 536
    const-string v10, "image/jps"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 537
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->setJPSDecodePart(II)I

    .line 539
    :cond_5
    const/4 v2, 0x0

    .line 540
    .local v2, aFD:Landroid/content/res/AssetFileDescriptor;
    const/4 v6, 0x0

    .line 544
    .local v6, fd:Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, authority:Ljava/lang/String;
    if-nez v3, :cond_9

    .line 547
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 562
    .end local v7           #filePath:Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v10, "image/mpo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 563
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->setMPOMonoIndex(II)I

    .line 565
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v8, v11, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v10

    if-eqz v10, :cond_7

    .line 567
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 569
    .local v9, outBmp:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 581
    if-eqz v2, :cond_8

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    :cond_8
    :goto_2
    if-eqz v8, :cond_1

    .line 588
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 552
    .end local v9           #outBmp:Landroid/graphics/Bitmap;
    :cond_9
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 553
    .local v4, cpClient:Landroid/content/ContentProviderClient;
    if-eqz v4, :cond_6

    .line 555
    const-string v10, "r"

    invoke-virtual {v4, p2, v10}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 556
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 557
    :cond_a
    if-eqz v6, :cond_6

    .line 558
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v6, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 573
    .end local v3           #authority:Ljava/lang/String;
    .end local v4           #cpClient:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v5

    .line 575
    .local v5, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 581
    if-eqz v2, :cond_b

    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 587
    :cond_b
    :goto_3
    if-eqz v8, :cond_1

    .line 588
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 579
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 581
    if-eqz v2, :cond_c

    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 587
    :cond_c
    :goto_4
    if-eqz v8, :cond_d

    .line 588
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    :cond_d
    throw v10

    .line 583
    .restart local v3       #authority:Ljava/lang/String;
    .restart local v9       #outBmp:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v10

    goto :goto_2

    .end local v3           #authority:Ljava/lang/String;
    .end local v9           #outBmp:Landroid/graphics/Bitmap;
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_3

    .end local v5           #e:Ljava/lang/Exception;
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
    .parameter "filePath"
    .parameter "degree"
    .parameter "width"
    .parameter "height"
    .parameter "type"

    .prologue
    .line 511
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v0

    .line 512
    .local v0, handle:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 522
    :goto_0
    return-object v1

    .line 514
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setDegree(II)I

    .line 515
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromExifFirst(IZ)I

    .line 516
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 517
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 518
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 520
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v1

    if-eqz v1, :cond_1

    .line 522
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
