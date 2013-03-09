.class public Lcom/htc/photowidget3d/grid/ImgOperator;
.super Ljava/lang/Object;
.source "ImgOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;
    }
.end annotation


# instance fields
.field private bDeleteCache:Z

.field private isImageCursorReady:Z

.field private isMediaContentChanged:Z

.field private mAlbumFolder:Ljava/lang/String;

.field private mAlbumPath:Ljava/lang/String;

.field public mColNum:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFocus:I

.field private mDeleteStartAt:I

.field public mGridHeight:I

.field public mGridWidth:I

.field private mImageArgs:[Ljava/lang/String;

.field private mImageCursor:Landroid/database/Cursor;

.field private mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

.field private mImagePhoneCursor:Landroid/database/Cursor;

.field private mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

.field private mImagePhoneURI:Landroid/net/Uri;

.field private mImageProj:[Ljava/lang/String;

.field private mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

.field private mImageSort:Ljava/lang/String;

.field private mImageURI:Landroid/net/Uri;

.field private mImageWhere:Ljava/lang/String;

.field private mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

.field private mNameArray:[Ljava/lang/String;

.field private mObserverHandler:Landroid/os/Handler;

.field public mRowNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mAlbumPath:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    .line 29
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "orientation"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageProj:[Ljava/lang/String;

    .line 35
    const-string v0, "datetaken DESC,_id DESC"

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageSort:Ljava/lang/String;

    .line 46
    iput v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 50
    iput-boolean v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->isMediaContentChanged:Z

    .line 51
    iput-boolean v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->isImageCursorReady:Z

    .line 52
    iput-boolean v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->bDeleteCache:Z

    .line 53
    iput v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mDeleteStartAt:I

    .line 54
    const/16 v0, 0x88

    iput v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    .line 55
    const/16 v0, 0x9f

    iput v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mRowNum:I

    .line 57
    iput v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mColNum:I

    .line 106
    new-instance v0, Lcom/htc/photowidget3d/grid/ImgOperator$1;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/grid/ImgOperator$1;-><init>(Lcom/htc/photowidget3d/grid/ImgOperator;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mObserverHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/htc/photowidget3d/grid/ImgCache;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/photowidget3d/grid/ImgCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mObserverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/photowidget3d/grid/ImgOperator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->isImageCursorReady:Z

    .line 347
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_0
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->stopMonitor()V

    .line 359
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_3
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v0, :cond_5

    .line 373
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->stopMonitor()V

    .line 374
    iput-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    .line 383
    :cond_5
    return-void
.end method

.method private getImageRows(Landroid/net/Uri;Landroid/database/Cursor;)[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    .locals 15
    .parameter "baseUri"
    .parameter "cur"

    .prologue
    .line 387
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    const/4 v13, 0x0

    .line 415
    :goto_0
    return-object v13

    .line 392
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 393
    .local v8, cnt:I
    const-string v1, "_data"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 394
    .local v9, dataCol:I
    const-string v1, "mime_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 395
    .local v14, typeCol:I
    const-string v1, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 396
    .local v7, _idCol:I
    const-string v1, "orientation"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 397
    .local v12, oriCol:I
    new-array v13, v8, [Lcom/htc/photowidget3d/grid/ImageCursorRow;

    .line 401
    .local v13, rows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    const/4 v11, 0x0

    .line 402
    .local v11, i:I
    :goto_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    new-instance v1, Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/htc/photowidget3d/grid/ImageCursorRow;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v13, v11

    .line 405
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 407
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageRows, i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v10

    .line 411
    .local v10, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageRows exception occurs, exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_e(Ljava/lang/String;)V

    .line 412
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private mergeRows([Lcom/htc/photowidget3d/grid/ImageCursorRow;[Lcom/htc/photowidget3d/grid/ImageCursorRow;)[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    .locals 7
    .parameter "rows1"
    .parameter "rows2"

    .prologue
    .line 312
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 314
    const/4 p1, 0x0

    .line 340
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 316
    .restart local p1
    :cond_1
    if-eqz p2, :cond_0

    .line 320
    if-nez p1, :cond_2

    move-object p1, p2

    .line 322
    goto :goto_0

    .line 325
    :cond_2
    array-length v3, p1

    .line 326
    .local v3, rows1Len:I
    array-length v4, p2

    .line 327
    .local v4, rows2Len:I
    add-int v0, v3, v4

    .line 328
    .local v0, cnt:I
    new-array v2, v0, [Lcom/htc/photowidget3d/grid/ImageCursorRow;

    .line 330
    .local v2, rows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 332
    aget-object v5, p1, v1

    aput-object v5, v2, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_4

    .line 337
    array-length v5, p1

    add-int/2addr v5, v1

    aget-object v6, p2, v1

    aput-object v6, v2, v5

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 340
    goto :goto_0
.end method


# virtual methods
.method public addCache([Lcom/htc/photowidget3d/grid/BitmapArray;)V
    .locals 4
    .parameter "bmpArray"

    .prologue
    .line 725
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 740
    :cond_0
    return-void

    .line 730
    :cond_1
    iget v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 734
    iget v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    sub-int v1, v0, v1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 736
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getImagePath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    sub-int v3, v0, v3

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/photowidget3d/grid/ImgCache;->addThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 730
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deInit()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/ImgOperator;->cleanUp()V

    .line 143
    return-void
.end method

.method public deleteCacheFile()V
    .locals 4

    .prologue
    .line 431
    iget-boolean v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->bDeleteCache:Z

    if-nez v2, :cond_1

    .line 451
    :cond_0
    return-void

    .line 436
    :cond_1
    iget v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mDeleteStartAt:I

    .line 437
    .local v1, nStartIndex:I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    if-eqz v2, :cond_0

    .line 447
    move v0, v1

    .local v0, i:I
    :goto_0
    add-int/lit8 v2, v1, 0x14

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/photowidget3d/grid/ImgCache;->deleteThumbnail(Ljava/lang/String;)Z

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBmp(III[Lcom/htc/photowidget3d/grid/BitmapArray;)Z
    .locals 17
    .parameter "nAction"
    .parameter "nViewType"
    .parameter "nOffset"
    .parameter "bmpArray"

    .prologue
    .line 484
    const/4 v13, 0x1

    .line 485
    .local v13, bRet:Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->bDeleteCache:Z

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    if-nez v1, :cond_1

    .line 489
    :cond_0
    const/4 v1, 0x0

    .line 720
    :goto_0
    return v1

    .line 492
    :cond_1
    if-nez p1, :cond_6

    .line 494
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    .line 501
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 595
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 597
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    const/16 v1, 0x14

    if-ge v14, v1, :cond_f

    .line 599
    aget-object v1, p4, v14

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    .line 597
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 501
    .end local v14           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 503
    :cond_4
    if-nez p2, :cond_2

    .line 505
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    rem-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 506
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, -0x14

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 507
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    if-gez v1, :cond_5

    .line 509
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto :goto_2

    .line 518
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->bDeleteCache:Z

    .line 519
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, 0x3c

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mDeleteStartAt:I

    goto :goto_2

    .line 523
    :cond_6
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v1, v0, :cond_a

    .line 525
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v1, v0, :cond_7

    .line 532
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 533
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto/16 :goto_2

    .line 538
    :cond_7
    if-nez p2, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    rem-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 541
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 543
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, -0x14

    if-gez v1, :cond_8

    const/4 v1, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, -0x14

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto :goto_4

    .line 554
    :cond_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->bDeleteCache:Z

    .line 555
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, -0x3c

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mDeleteStartAt:I

    goto/16 :goto_2

    .line 559
    :cond_a
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v1, v0, :cond_e

    .line 561
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v1, v0, :cond_d

    .line 563
    const/4 v1, -0x1

    move/from16 v0, p3

    if-eq v1, v0, :cond_2

    .line 567
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int v1, v1, p3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 569
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int v1, v1, p3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto/16 :goto_2

    .line 571
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto/16 :goto_2

    .line 577
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 580
    :cond_d
    if-nez p2, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    rem-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 584
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 586
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto/16 :goto_2

    .line 592
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 603
    .restart local v14       #i:I
    :cond_f
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v1, v0, :cond_17

    .line 605
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, szMimeType:Ljava/lang/String;
    if-nez v4, :cond_10

    .line 610
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 613
    :cond_10
    const/4 v5, 0x0

    .line 614
    .local v5, bmpFullScreen:Landroid/graphics/Bitmap;
    const-string v1, "image/mpo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "image/jps"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 617
    :cond_11
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mColNum:I

    mul-int v5, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    .end local v5           #bmpFullScreen:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mRowNum:I

    mul-int/2addr v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->convert3DTo2DBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 634
    .restart local v5       #bmpFullScreen:Landroid/graphics/Bitmap;
    :goto_5
    if-nez v5, :cond_13

    .line 636
    if-eqz p1, :cond_12

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v1, v0, :cond_12

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v1, v0, :cond_16

    const/4 v1, -0x1

    move/from16 v0, p3

    if-ne v1, v0, :cond_16

    .line 640
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mColNum:I

    mul-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mRowNum:I

    mul-int/2addr v6, v7

    invoke-static {v1, v2, v3, v6}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->loadImageFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 649
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mColNum:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mRowNum:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    move-object/from16 v6, p4

    invoke-static/range {v5 .. v10}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->cropIntoPieces(Landroid/graphics/Bitmap;[Lcom/htc/photowidget3d/grid/BitmapArray;IIII)Z

    move-result v13

    .line 651
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 653
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .end local v4           #szMimeType:Ljava/lang/String;
    .end local v5           #bmpFullScreen:Landroid/graphics/Bitmap;
    :cond_14
    :goto_7
    move v1, v13

    .line 720
    goto/16 :goto_0

    .line 626
    .restart local v4       #szMimeType:Ljava/lang/String;
    .restart local v5       #bmpFullScreen:Landroid/graphics/Bitmap;
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getImagePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mColNum:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mRowNum:I

    invoke-static {v1, v2, v3, v6, v7}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->loadFullScreen(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_5

    .line 643
    :cond_16
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v1, v0, :cond_13

    .line 645
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    rem-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    goto :goto_6

    .line 658
    .end local v4           #szMimeType:Ljava/lang/String;
    .end local v5           #bmpFullScreen:Landroid/graphics/Bitmap;
    :cond_17
    if-nez p2, :cond_1e

    .line 661
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    add-int/lit8 v1, v1, 0x14

    if-ge v14, v1, :cond_14

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v1, v1

    if-ge v14, v1, :cond_1d

    .line 665
    const/16 v16, 0x0

    .line 666
    .local v16, tmpBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getImagePath()Ljava/lang/String;

    move-result-object v15

    .line 668
    .local v15, szName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    if-eqz v1, :cond_18

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    invoke-virtual {v1, v15}, Lcom/htc/photowidget3d/grid/ImgCache;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 673
    :cond_18
    if-nez v16, :cond_1b

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 676
    .restart local v4       #szMimeType:Ljava/lang/String;
    if-nez v4, :cond_19

    .line 678
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 681
    :cond_19
    const-string v1, "image/mpo"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "image/jps"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 684
    :cond_1a
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    const/4 v12, 0x2

    move-object v9, v4

    invoke-virtual/range {v6 .. v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->convert3DTo2DBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 696
    :goto_9
    if-nez v16, :cond_1b

    .line 698
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    sub-int v1, v14, v1

    aget-object v1, p4, v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    .line 705
    .end local v4           #szMimeType:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    sub-int v1, v14, v1

    aget-object v1, p4, v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 661
    .end local v15           #szName:Ljava/lang/String;
    .end local v16           #tmpBmp:Landroid/graphics/Bitmap;
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 693
    .restart local v4       #szMimeType:Ljava/lang/String;
    .restart local v15       #szName:Ljava/lang/String;
    .restart local v16       #tmpBmp:Landroid/graphics/Bitmap;
    :cond_1c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    invoke-static {v15, v1, v2}, Lcom/htc/photowidget3d/grid/util/ImageUtility;->loadThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_9

    .line 709
    .end local v4           #szMimeType:Ljava/lang/String;
    .end local v15           #szName:Ljava/lang/String;
    .end local v16           #tmpBmp:Landroid/graphics/Bitmap;
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmpArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    sub-int v2, v14, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] set to null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    sub-int v1, v14, v1

    aget-object v1, p4, v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 716
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect viewType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public getCurrentFocus()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    return v0
.end method

.method public getImgNum()I
    .locals 2

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, imgNum:I
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v0, v1

    .line 426
    :cond_0
    return v0
.end method

.method public getPropertiesToSave(Ljava/util/Properties;)Z
    .locals 4
    .parameter "props"

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    if-nez v1, :cond_0

    move v1, v2

    .line 170
    :goto_0
    return v1

    .line 160
    :cond_0
    const-string v3, "image_uri"

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {p1, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    const-string v1, "image_where"

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageWhere:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    array-length v0, v1

    .line 163
    .local v0, size:I
    :goto_2
    if-lez v0, :cond_1

    .line 165
    const-string v1, "image_args"

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    const-string v1, "folder_type"

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mAlbumFolder:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const-string v2, "image_uri_phone"

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_3
    invoke-virtual {p1, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    .end local v0           #size:I
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 162
    goto :goto_2

    .line 168
    .restart local v0       #size:I
    :cond_4
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public getSavedProperties(Ljava/util/Properties;)V
    .locals 4
    .parameter "props"

    .prologue
    .line 175
    const-string v2, "image_uri"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, strUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 178
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    .line 180
    :cond_0
    const-string v2, "image_where"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageWhere:Ljava/lang/String;

    .line 181
    const-string v2, "image_args"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    .line 182
    const-string v2, "folder_type"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mAlbumFolder:Ljava/lang/String;

    .line 183
    const-string v2, "image_uri_phone"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, strPhoneUri:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 186
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImgCache:Lcom/htc/photowidget3d/grid/ImgCache;

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mAlbumFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/photowidget3d/grid/ImgCache;->setCacheFolderName(Ljava/lang/String;)V

    .line 193
    :cond_2
    return-void
.end method

.method public init(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 128
    const-string v0, "image_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    .line 129
    const-string v0, "image_where"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageWhere:Ljava/lang/String;

    .line 130
    const-string v0, "image_args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    .line 131
    const-string v0, "folder_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mAlbumFolder:Ljava/lang/String;

    .line 132
    const-string v0, "image_uri_phone"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    .line 133
    return-void
.end method

.method public initLayoutInfo(IIII)V
    .locals 0
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nRow"
    .parameter "nCol"

    .prologue
    .line 147
    iput p1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridWidth:I

    .line 148
    iput p2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mGridHeight:I

    .line 149
    iput p3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mRowNum:I

    .line 150
    iput p4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mColNum:I

    .line 151
    return-void
.end method

.method public isContentChanged()Z
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->isContentChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->isContentChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const/4 v0, 0x1

    .line 215
    :cond_1
    return v0
.end method

.method public loadAlbum()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 220
    const-string v0, "loadAlbum"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 222
    const/4 v6, 0x0

    .line 223
    .local v6, bRet:Z
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    if-nez v0, :cond_1

    move v6, v11

    .line 307
    .end local v6           #bRet:Z
    :cond_0
    :goto_0
    return v6

    .line 228
    .restart local v6       #bRet:Z
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/ImgOperator;->cleanUp()V

    .line 236
    :cond_2
    invoke-static {}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    if-eqz v0, :cond_9

    move v8, v12

    .line 238
    .local v8, isSupportPhoneStorage:Z
    :goto_1
    if-eqz v8, :cond_4

    .line 240
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v0, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/ImgOperator;->cleanUp()V

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageProj:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageSort:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    .line 254
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageProj:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageSort:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_2
    iput-boolean v11, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->isImageCursorReady:Z

    .line 266
    const/4 v10, 0x0

    .line 268
    .local v10, tempRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    .line 270
    new-instance v0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;-><init>(Lcom/htc/photowidget3d/grid/ImgOperator;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    .line 271
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->startMonitor(Landroid/net/Uri;)V

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 278
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageURI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v1}, Lcom/htc/photowidget3d/grid/ImgOperator;->getImageRows(Landroid/net/Uri;Landroid/database/Cursor;)[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-result-object v10

    .line 279
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_6
    const/4 v9, 0x0

    .line 285
    .local v9, tempPhoneRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    if-eqz v8, :cond_8

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    .line 287
    new-instance v0, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;-><init>(Lcom/htc/photowidget3d/grid/ImgOperator;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    .line 288
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageObserver:Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/grid/ImgOperator$MyChangeObserver;->startMonitor(Landroid/net/Uri;)V

    .line 293
    :cond_7
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 295
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneURI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v1}, Lcom/htc/photowidget3d/grid/ImgOperator;->getImageRows(Landroid/net/Uri;Landroid/database/Cursor;)[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-result-object v9

    .line 296
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImagePhoneCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_8
    invoke-direct {p0, v10, v9}, Lcom/htc/photowidget3d/grid/ImgOperator;->mergeRows([Lcom/htc/photowidget3d/grid/ImageCursorRow;[Lcom/htc/photowidget3d/grid/ImageCursorRow;)[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    .line 302
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v0, v0

    if-lez v0, :cond_0

    move v6, v12

    .line 304
    goto/16 :goto_0

    .end local v8           #isSupportPhoneStorage:Z
    .end local v9           #tempPhoneRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    .end local v10           #tempRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;
    :cond_9
    move v8, v11

    .line 236
    goto/16 :goto_1

    .line 257
    .restart local v8       #isSupportPhoneStorage:Z
    :catch_0
    move-exception v7

    .line 259
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "LoadAlbum IllegalStateExceptio occurs"

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public resetPage()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    .line 138
    return-void
.end method

.method public setLaunchAlbumInfo(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    if-nez v4, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v3

    .line 460
    :cond_1
    iget v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 465
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    iget v5, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 470
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mImageRows:[Lcom/htc/photowidget3d/grid/ImageCursorRow;

    iget v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mCurrentFocus:I

    aget-object v0, v3, v4

    .line 471
    .local v0, entry:Lcom/htc/photowidget3d/grid/ImageCursorRow;
    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, mime:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/photowidget3d/grid/ImageCursorRow;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 474
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v3, "folder_type"

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/ImgOperator;->mAlbumFolder:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const/high16 v3, 0x1400

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    const/4 v3, 0x1

    goto :goto_0
.end method
