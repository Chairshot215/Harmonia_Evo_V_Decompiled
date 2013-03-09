.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final PREVIEW_THUMBNAIL_BOUNDS_LIMIT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "ImageModel"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I = 0x1e0

.field public static mCheckResolution:Z


# instance fields
.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mPreviewOnly:Z

.field public mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    .line 76
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCheckImageResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 65
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 81
    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 103
    invoke-direct {p0, p2, v1}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 106
    iput-boolean p4, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 110
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/model/RegionModel;Z)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "region"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 65
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 81
    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 91
    iput-boolean p5, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 95
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V
    .locals 9
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 116
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 65
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 81
    iput-object v8, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 118
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 120
    iput-boolean p6, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 124
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 128
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "cid:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 130
    const-string v0, "$"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 131
    .local v7, pos:I
    if-lez v7, :cond_0

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 132
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 133
    :cond_0
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 137
    .end local v7           #pos:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;Z)V
    .locals 8
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 141
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 65
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 81
    iput-object v7, p0, Lcom/android/mms/model/ImageModel;->mUri:Landroid/net/Uri;

    .line 144
    iput-boolean p6, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 146
    return-void
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 323
    .local v11, outWidth:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 324
    .local v10, outHeight:I
    const/4 v14, 0x1

    .line 327
    .local v14, s:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThumbCache()Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x50

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 330
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->loadThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 331
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 442
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v5

    .line 336
    :cond_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    .line 340
    .local v8, input:Ljava/io/InputStream;
    if-eqz v11, :cond_2

    if-nez v10, :cond_3

    .line 342
    :cond_2
    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v19

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 344
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 345
    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 346
    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 347
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 352
    if-eqz v8, :cond_3

    .line 354
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    const/4 v8, 0x0

    .line 363
    :cond_3
    :goto_1
    move/from16 v17, p1

    .line 364
    .local v17, thumbnailBoundsLimit_Width:I
    move/from16 v16, p1

    .line 367
    .local v16, thumbnailBoundsLimit_Height:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x50

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v17

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v16

    .line 372
    if-lez v17, :cond_4

    .line 373
    div-int/lit8 v17, v17, 0x2

    .line 374
    :cond_4
    if-lez v16, :cond_5

    .line 375
    div-int/lit8 v16, v16, 0x2

    .line 389
    :cond_5
    div-int v19, v11, v17

    div-int v20, v10, v16

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 390
    if-nez v14, :cond_7

    .line 391
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 399
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 401
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v8, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 404
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_d

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x50

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 406
    move/from16 v18, v17

    .line 407
    .local v18, widthLimit:I
    move/from16 v7, v16

    .line 409
    .local v7, heightLimit:I
    move/from16 v0, v18

    if-gt v11, v0, :cond_8

    if-gt v10, v7, :cond_8

    .line 437
    if-eqz v8, :cond_0

    .line 439
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 440
    :catch_0
    move-exception v6

    .line 441
    .local v6, e:Ljava/io/IOException;
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 356
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #heightLimit:I
    .end local v16           #thumbnailBoundsLimit_Height:I
    .end local v17           #thumbnailBoundsLimit_Width:I
    .end local v18           #widthLimit:I
    :catch_1
    move-exception v6

    .line 357
    .restart local v6       #e:Ljava/io/IOException;
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 348
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 349
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 350
    const/4 v5, 0x0

    .line 352
    if-eqz v8, :cond_0

    .line 354
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 355
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 356
    :catch_3
    move-exception v6

    .line 357
    .local v6, e:Ljava/io/IOException;
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 352
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v8, :cond_6

    .line 354
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 355
    const/4 v8, 0x0

    .line 358
    :cond_6
    :goto_3
    throw v19

    .line 356
    :catch_4
    move-exception v6

    .line 357
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 393
    .end local v6           #e:Ljava/io/IOException;
    .restart local v16       #thumbnailBoundsLimit_Height:I
    .restart local v17       #thumbnailBoundsLimit_Width:I
    :cond_7
    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_2

    .line 412
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #heightLimit:I
    .restart local v18       #widthLimit:I
    :cond_8
    :try_start_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v4, v0

    .line 413
    .local v4, afterSameplWidth:F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v3, v0

    .line 414
    .local v3, afterSameplHeight:F
    move/from16 v0, v18

    int-to-float v13, v0

    .line 415
    .local v13, resizeWidth:F
    int-to-float v12, v7

    .line 417
    .local v12, resizeHeight:F
    cmpl-float v19, v4, v13

    if-gtz v19, :cond_9

    cmpl-float v19, v3, v12

    if-lez v19, :cond_a

    .line 418
    :cond_9
    div-float v19, v4, v13

    div-float v20, v3, v12

    cmpl-float v19, v19, v20

    if-lez v19, :cond_c

    .line 419
    mul-float v19, v3, v13

    div-float v12, v19, v4

    .line 422
    :goto_4
    float-to-int v0, v13

    move/from16 v19, v0

    float-to-int v0, v12

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 423
    .local v15, t:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    move-object v5, v15

    .line 426
    .end local v15           #t:Landroid/graphics/Bitmap;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThumbCache()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 427
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v5, v2}, Lcom/android/mms/ui/MessageUtils;->saveThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 437
    .end local v3           #afterSameplHeight:F
    .end local v4           #afterSameplWidth:F
    .end local v7           #heightLimit:I
    .end local v12           #resizeHeight:F
    .end local v13           #resizeWidth:F
    .end local v18           #widthLimit:I
    :cond_b
    :goto_5
    if-eqz v8, :cond_0

    .line 439
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 440
    :catch_5
    move-exception v6

    .line 441
    .restart local v6       #e:Ljava/io/IOException;
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 421
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #afterSameplHeight:F
    .restart local v4       #afterSameplWidth:F
    .restart local v7       #heightLimit:I
    .restart local v12       #resizeHeight:F
    .restart local v13       #resizeWidth:F
    .restart local v18       #widthLimit:I
    :cond_c
    mul-float v19, v4, v12

    div-float v13, v19, v3

    goto :goto_4

    .line 429
    .end local v3           #afterSameplHeight:F
    .end local v4           #afterSameplWidth:F
    .end local v7           #heightLimit:I
    .end local v12           #resizeHeight:F
    .end local v13           #resizeWidth:F
    .end local v18           #widthLimit:I
    :cond_d
    if-eqz v5, :cond_b

    :try_start_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThumbCache()Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x50

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 430
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v5, v2}, Lcom/android/mms/ui/MessageUtils;->saveThumbnailBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 433
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v6

    .line 434
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_a
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 435
    const/4 v5, 0x0

    .line 437
    if-eqz v8, :cond_0

    .line 439
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 440
    :catch_7
    move-exception v6

    .line 441
    .local v6, e:Ljava/io/IOException;
    const-string v19, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 437
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v19

    if-eqz v8, :cond_e

    .line 439
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 442
    :cond_e
    :goto_6
    throw v19

    .line 440
    :catch_8
    move-exception v6

    .line 441
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "ImageModel"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 194
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 195
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 198
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getPartName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    .line 202
    iget v1, v0, Lcom/android/mms/ui/UriImage;->mSize:I

    iput v1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 208
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 159
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getPartName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    .line 163
    iget v1, v0, Lcom/android/mms/ui/UriImage;->mSize:I

    iput v1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 166
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0           #uriImage:Lcom/android/mms/ui/UriImage;
    :cond_0
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v0       #uriImage:Lcom/android/mms/ui/UriImage;
    goto :goto_0

    .line 172
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 174
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getCID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 179
    :goto_1
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 180
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 190
    return-void

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 250
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 252
    sget-boolean v1, Lcom/android/mms/model/ImageModel;->mCheckResolution:Z

    if-eqz v1, :cond_0

    .line 253
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 255
    :cond_0
    return-void
.end method

.method public createThumbnailBitmap()V
    .locals 8

    .prologue
    .line 292
    const-string v4, ""

    .line 293
    .local v4, mSrc:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 295
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 296
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://mms/part"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 300
    .local v0, bMmsParts:Z
    if-eqz v0, :cond_0

    .line 303
    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/model/MediaModel;->mPartName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 312
    const/16 v6, 0x50

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 313
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "ImageModel"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 259
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 262
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x50

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v2, v0

    .line 270
    :goto_1
    return-object v2

    .line 262
    :cond_1
    const/16 v2, 0x1e0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageModel"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getBitmapWithDrmCheck()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 275
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 278
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x50

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v2, v0

    .line 286
    :goto_1
    return-object v2

    .line 278
    :cond_1
    const/16 v2, 0x1e0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageModel"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 451
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Landroid/drm/mobile1/DrmException;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 6
    .parameter "evt"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 212
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmilMediaStart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 225
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, evtType:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 227
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 234
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 237
    invoke-virtual {p0, v5}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 238
    return-void

    .line 216
    .end local v0           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    .end local v1           #evtType:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmilMediaPause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 220
    :cond_3
    iget-short v2, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v2, v4, :cond_0

    .line 221
    iput-boolean v5, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 229
    .restart local v0       #action:Lcom/android/mms/model/MediaModel$MediaAction;
    .restart local v1       #evtType:Ljava/lang/String;
    :cond_4
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 230
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_1

    .line 231
    :cond_5
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_1
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 461
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    :cond_0
    return-void
.end method

.method public setPreview(Z)V
    .locals 0
    .parameter "bPreview"

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/android/mms/model/ImageModel;->mPreviewOnly:Z

    .line 469
    return-void
.end method
