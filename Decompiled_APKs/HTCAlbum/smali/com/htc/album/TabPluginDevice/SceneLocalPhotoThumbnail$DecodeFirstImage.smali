.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;
.super Ljava/lang/Thread;
.source "SceneLocalPhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeFirstImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DecodeFirstImage"


# instance fields
.field private mIsStop:Z

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 1
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    .line 1326
    const-string v0, "DecodeFirstImage"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1321
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    .line 1328
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->start()V

    .line 1329
    return-void
.end method

.method private createFirstImageBitmap(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "context"
    .parameter "mediaData"

    .prologue
    .line 1474
    if-nez p1, :cond_1

    const/16 v18, 0x0

    .line 1557
    :cond_0
    :goto_0
    return-object v18

    .line 1476
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f02000e

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1477
    .local v19, d:Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 1478
    .local v26, resW:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 1480
    .local v25, resH:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1481
    .local v18, combinBmp:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1482
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1484
    if-eqz p2, :cond_0

    .line 1486
    const/16 v23, 0x0

    .line 1487
    .local v23, isOk:Z
    new-instance v2, Lcom/htc/sunny2/common/ImageDecoder;

    invoke-direct {v2}, Lcom/htc/sunny2/common/ImageDecoder;-><init>()V

    .line 1488
    .local v2, imageDecoder:Lcom/htc/sunny2/common/ImageDecoder;
    const/16 v7, 0x34

    .line 1493
    .local v7, decodeFlags:I
    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    .line 1494
    .local v5, widthGridViewItem:I
    move v6, v5

    .line 1495
    .local v6, heightGridViewItem:I
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1527
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_0

    .line 1529
    :cond_3
    const-wide/16 v10, 0xa

    invoke-virtual {v2, v10, v11}, Lcom/htc/sunny2/common/ImageDecoder;->iterate(J)Z

    move-result v4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3

    .line 1530
    invoke-virtual {v2}, Lcom/htc/sunny2/common/ImageDecoder;->takeOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1532
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_0

    .line 1534
    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->THUMBNAIL_TITLE_IMAGE_WIDTH_HEIGHT:I

    int-to-float v0, v4

    move/from16 v27, v0

    .line 1535
    .local v27, width:F
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v16, v0

    .line 1536
    .local v16, bmWidth:F
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v15, v4

    .line 1537
    .local v15, bmHeight:F
    const/16 v20, 0x0

    .line 1538
    .local v20, fRotate:F
    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    .line 1543
    .local v24, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_4

    move-object/from16 v22, p2

    .line 1545
    check-cast v22, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1546
    .local v22, iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface/range {v22 .. v22}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v4

    int-to-float v0, v4

    move/from16 v20, v0

    .line 1547
    const/high16 v4, 0x4000

    div-float v4, v16, v4

    const/high16 v8, 0x4000

    div-float v8, v15, v8

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1550
    .end local v22           #iimage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    div-float v4, v27, v16

    div-float v8, v27, v15

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1551
    move/from16 v0, v26

    int-to-float v4, v0

    sub-float v4, v4, v27

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    move/from16 v0, v25

    int-to-float v8, v0

    sub-float v8, v8, v27

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1553
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1498
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #bmHeight:F
    .end local v16           #bmWidth:F
    .end local v20           #fRotate:F
    .end local v24           #m:Landroid/graphics/Matrix;
    .end local v27           #width:F
    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v21

    .line 1499
    .local v21, filePath:Ljava/lang/String;
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1500
    const/4 v4, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromFilePathToBitmap(Lcom/htc/sunny2/IMediaData;IIII)Z

    move-result v23

    goto/16 :goto_1

    .line 1506
    .end local v21           #filePath:Ljava/lang/String;
    :pswitch_2
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1507
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_2

    .line 1508
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromParcelFileDescriptorToBitmap(Landroid/os/ParcelFileDescriptor;IIII)Z

    move-result v23

    goto/16 :goto_1

    .line 1514
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 1515
    .local v9, is:Ljava/io/InputStream;
    if-eqz v9, :cond_2

    .line 1516
    const/4 v10, 0x0

    move-object v8, v2

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/common/ImageDecoder;->loadFromInputStreamToBitmap(Ljava/io/InputStream;IIII)Z

    move-result v23

    goto/16 :goto_1

    .line 1521
    .end local v9           #is:Ljava/io/InputStream;
    :pswitch_4
    const/16 v23, 0x0

    .line 1522
    goto/16 :goto_1

    .line 1495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private createFirstVideoBitmap(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "context"
    .parameter "mediaData"

    .prologue
    .line 1388
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02000e

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1389
    .local v6, d:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 1390
    .local v14, resW:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 1392
    .local v13, resH:I
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1393
    .local v5, combinBmp:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1394
    .local v4, canvas:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1396
    if-nez p2, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-object v5

    .line 1398
    :cond_1
    const/4 v8, 0x0

    .line 1399
    .local v8, firstImg:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 1400
    .local v12, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1402
    .local v15, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 1416
    :goto_1
    :pswitch_0
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1423
    :try_start_1
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1430
    :goto_2
    :try_start_2
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1439
    :goto_3
    if-eqz v8, :cond_0

    .line 1443
    sget v19, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->THUMBNAIL_TITLE_IMAGE_WIDTH_HEIGHT:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1445
    .local v17, width:F
    const/16 v18, 0x0

    .local v18, ww:I
    const/4 v10, 0x0

    .line 1446
    .local v10, hh:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 1447
    .local v16, w:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1448
    .local v9, h:I
    move/from16 v0, v16

    if-le v0, v9, :cond_3

    .line 1449
    move/from16 v0, v17

    float-to-int v10, v0

    .line 1450
    mul-int v19, v16, v10

    div-int v18, v19, v9

    .line 1456
    :goto_4
    move/from16 v0, v18

    invoke-static {v8, v0, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1458
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v8, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1459
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 1460
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1461
    move-object v8, v3

    .line 1464
    :cond_2
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 1466
    .local v11, m:Landroid/graphics/Matrix;
    int-to-float v0, v14

    move/from16 v19, v0

    sub-float v19, v19, v17

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    int-to-float v0, v13

    move/from16 v20, v0

    sub-float v20, v20, v17

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1467
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v8, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1404
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v9           #h:I
    .end local v10           #hh:I
    .end local v11           #m:Landroid/graphics/Matrix;
    .end local v16           #w:I
    .end local v17           #width:F
    .end local v18           #ww:I
    :pswitch_1
    :try_start_3
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1418
    :catch_0
    move-exception v7

    .line 1419
    .local v7, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1423
    :try_start_4
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1430
    :goto_5
    :try_start_5
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1432
    :catch_1
    move-exception v7

    .line 1433
    const/4 v15, 0x0

    .line 1435
    goto :goto_3

    .line 1407
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_6
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 1408
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 1422
    :catchall_0
    move-exception v19

    .line 1423
    :try_start_7
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1430
    :goto_6
    :try_start_8
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1434
    :goto_7
    throw v19

    .line 1411
    :pswitch_3
    :try_start_9
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 1425
    :catch_2
    move-exception v7

    .line 1426
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1432
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 1433
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 1435
    goto/16 :goto_3

    .line 1425
    :catch_4
    move-exception v7

    .line 1426
    const/4 v15, 0x0

    goto :goto_5

    .line 1425
    .end local v7           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 1426
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_6

    .line 1432
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 1433
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_7

    .line 1453
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #h:I
    .restart local v10       #hh:I
    .restart local v16       #w:I
    .restart local v17       #width:F
    .restart local v18       #ww:I
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1454
    mul-int v19, v9, v18

    div-int v10, v19, v16

    goto/16 :goto_4

    .line 1402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method exit()V
    .locals 2

    .prologue
    .line 1339
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    monitor-enter v1

    .line 1340
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    .line 1341
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1342
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1343
    monitor-exit v1

    .line 1344
    return-void

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1347
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    if-nez v5, :cond_6

    .line 1348
    const/4 v3, 0x0

    .line 1350
    .local v3, item:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    monitor-enter v6

    .line 1351
    :try_start_0
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    if-eqz v5, :cond_1

    monitor-exit v6

    goto :goto_0

    .line 1363
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1354
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1355
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1360
    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    if-eqz v5, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 1362
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;

    move-object v3, v0

    .line 1363
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1365
    const/4 v1, 0x0

    .line 1366
    .local v1, firstImg:Landroid/graphics/Bitmap;
    iget-object v4, v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;->mediaData:Lcom/htc/sunny2/IMediaData;

    .line 1368
    .local v4, mediaData:Lcom/htc/sunny2/IMediaData;
    const/4 v2, 0x0

    .line 1369
    .local v2, isVideo:Z
    instance-of v5, v4, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 1370
    check-cast v5, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v5}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v2

    .line 1373
    :cond_4
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    if-nez v5, :cond_0

    .line 1375
    if-nez v2, :cond_5

    .line 1376
    iget-object v5, v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;->context:Landroid/content/Context;

    invoke-direct {p0, v5, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->createFirstImageBitmap(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1382
    :goto_2
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mIsStop:Z

    if-nez v5, :cond_0

    .line 1383
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/16 v6, 0x5078

    invoke-virtual {v5, v6, v1, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 1379
    :cond_5
    iget-object v5, v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;->context:Landroid/content/Context;

    invoke-direct {p0, v5, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->createFirstVideoBitmap(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 1385
    .end local v1           #firstImg:Landroid/graphics/Bitmap;
    .end local v2           #isVideo:Z
    .end local v3           #item:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;
    .end local v4           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_6
    return-void

    .line 1357
    .restart local v3       #item:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V
    .locals 3
    .parameter "context"
    .parameter "mediaData"

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    monitor-enter v1

    .line 1333
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->mList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1335
    monitor-exit v1

    .line 1336
    return-void

    .line 1335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
