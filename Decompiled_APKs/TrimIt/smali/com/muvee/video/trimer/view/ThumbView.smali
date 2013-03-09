.class public Lcom/muvee/video/trimer/view/ThumbView;
.super Landroid/view/View;
.source "ThumbView.java"

# interfaces
.implements Lcom/muvee/video/trimer/MmvtConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;,
        Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;,
        Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Video-Trim"


# instance fields
.field private mCurrentPositionIndex:I

.field private mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

.field private mMiddleThumbHeight:F

.field private mOnErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;

.field private mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mThumbHeights:[F

.field private runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    .line 220
    const/high16 v0, 0x4387

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    .line 200
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/ThumbView;->init()V

    .line 201
    return-void

    .line 221
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0x42t 0x43t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    .line 220
    const/high16 v0, 0x4387

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    .line 195
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/ThumbView;->init()V

    .line 196
    return-void

    .line 221
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0x42t 0x43t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    .line 220
    const/high16 v0, 0x4387

    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    .line 190
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/ThumbView;->init()V

    .line 191
    return-void

    .line 221
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xdct 0x42t
        0x0t 0x0t 0x42t 0x43t
    .end array-data
.end method

.method static synthetic access$0(Lcom/muvee/video/trimer/view/ThumbView;)[Lcom/muvee/video/trimer/MediaDetail;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    return-object v0
.end method

.method static synthetic access$1(Lcom/muvee/video/trimer/view/ThumbView;)I
    .locals 1
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/muvee/video/trimer/view/ThumbView;)Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/muvee/video/trimer/view/ThumbView;Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFIZI)V
    .locals 12
    .parameter "canvas"
    .parameter "paint"
    .parameter "height"
    .parameter "width"
    .parameter "r"
    .parameter "factor"
    .parameter "position"
    .parameter "topPosition"
    .parameter "index"
    .parameter "move"
    .parameter "sH"

    .prologue
    .line 341
    if-gez p9, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v7, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    array-length v7, v7

    move/from16 v0, p9

    if-ge v0, v7, :cond_0

    .line 350
    iget-object v7, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v4, v7, p9

    .line 354
    .local v4, mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    invoke-virtual {v4}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v7

    if-eqz v7, :cond_0

    .line 360
    invoke-virtual {v4}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 366
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v4, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    .line 367
    new-instance v5, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 370
    .local v5, rectF:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 375
    .local v3, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, p3, v7

    mul-float v7, v7, p6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, p3, v8

    mul-float v8, v8, p6

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 376
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 384
    invoke-virtual {v4}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v7

    if-eqz v7, :cond_2

    .line 386
    move/from16 v0, p11

    invoke-static {v2, v0}, Lcom/muvee/video/trimer/util/TrimmerUtil;->getRefelectionThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 387
    .local v6, refelectionThumb:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v6, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 388
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 394
    .end local v6           #refelectionThumb:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v7, v4, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 399
    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 400
    const/high16 v7, 0x3f80

    const/high16 v8, -0x4080

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 401
    const/4 v7, 0x0

    const/high16 v8, 0x4000

    mul-float v8, v8, p6

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 403
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/16 :goto_0

    .line 392
    :cond_2
    invoke-virtual {p1, v2, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private generateThumb(ILandroid/view/View;)V
    .locals 3
    .parameter "index"
    .parameter "view"

    .prologue
    .line 704
    const-string v0, "Video-Trim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::generateThumb:mMediaDetails[index].getBitmap()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 707
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/muvee/video/trimer/view/ThumbView;->generateThumb(ILcom/muvee/video/trimer/MediaDetail;)I

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    :cond_1
    new-instance v0, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;-><init>(Lcom/muvee/video/trimer/view/ThumbView;ILandroid/view/View;Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;)V

    iput-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    .line 714
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    return-void
.end method

.method private getNearestPositionIndex(IZ)I
    .locals 5
    .parameter "currentPosition"
    .parameter "left"

    .prologue
    .line 570
    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v1, v3, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    .line 571
    .local v1, nNearestLeft:I
    const/4 v2, 0x0

    .line 572
    .local v2, nNearestRight:I
    const/4 v0, 0x1

    .line 573
    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 584
    :cond_0
    add-int/lit8 v3, v0, -0x1

    return v3

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    .line 577
    if-lt p1, v1, :cond_2

    if-le p1, v2, :cond_0

    .line 580
    :cond_2
    move v1, v2

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mPaint:Landroid/graphics/Paint;

    .line 206
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 208
    return-void
.end method

.method private setBitmap(Lcom/muvee/video/trimer/MediaDetail;[B)V
    .locals 0
    .parameter "mediaDetail"
    .parameter "bs"

    .prologue
    .line 735
    invoke-virtual {p1, p2}, Lcom/muvee/video/trimer/MediaDetail;->setBitmap([B)V

    .line 739
    return-void
.end method


# virtual methods
.method public generateThumb(ILcom/muvee/video/trimer/MediaDetail;)I
    .locals 6
    .parameter "position"
    .parameter "mediaDetail"

    .prologue
    .line 659
    const/4 v2, 0x0

    .line 661
    .local v2, mResult:I
    :try_start_0
    sget-object v3, Lcom/muvee/video/trimer/view/ThumbView;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    iget v4, p2, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    invoke-virtual {v3, v4, p1}, Lcom/muvee/video/trimer/ThumbInterface;->getThumbnail(II)[B

    move-result-object v0

    .line 662
    .local v0, bs:[B
    const-string v3, "Video-Trim"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::generateThumb:bs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz v0, :cond_1

    .line 667
    const-string v3, "Video-Trim"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "thumbnail received setBitmap "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, p2, v0}, Lcom/muvee/video/trimer/view/ThumbView;->setBitmap(Lcom/muvee/video/trimer/MediaDetail;[B)V

    .line 693
    .end local v0           #bs:[B
    :cond_0
    :goto_0
    return v2

    .line 672
    .restart local v0       #bs:[B
    :cond_1
    sget-object v3, Lcom/muvee/video/trimer/view/ThumbView;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v3}, Lcom/muvee/video/trimer/ThumbInterface;->getErrorCode()I

    move-result v2

    .line 673
    const-string v3, "Video-Trim"

    const-string v4, "thumbnail failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    .end local v0           #bs:[B
    :catch_0
    move-exception v1

    .line 676
    .local v1, error:Ljava/lang/OutOfMemoryError;
    const-string v3, "Video-Trim"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::generateThumb:error.getMessage()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/ThumbView;->removeRunnable()V

    .line 678
    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

    if-eqz v3, :cond_0

    .line 679
    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

    invoke-interface {v3}, Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;->onOutOfMemoryError()V

    goto :goto_0
.end method

.method public getCurrentBitmapDrawable()[B
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    iget v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaDetail()Lcom/muvee/video/trimer/MediaDetail;
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    iget v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    return v0
.end method

.method public getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    return-object v0
.end method

.method public getMiddleThumbHeight()F
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    return v0
.end method

.method public getOnErrorListener()Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;

    return-object v0
.end method

.method public getOnOutOfMemoryErrorListener()Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

    return-object v0
.end method

.method public getThumbHeights()[F
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 232
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    .line 233
    .local v4, height:F
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/ThumbView;->getWidth()I

    move-result v1

    int-to-float v5, v1

    .line 234
    .local v5, width:F
    const/high16 v1, 0x4370

    sget v2, Lcom/muvee/video/trimer/MainActivity;->height:I

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 242
    .local v6, r:F
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    array-length v1, v1

    move/from16 v0, v21

    if-lt v0, v1, :cond_2

    .line 278
    const/high16 v7, 0x3f80

    .line 282
    .local v7, mR:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/muvee/video/trimer/view/ThumbView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    mul-float v2, v4, v6

    .line 283
    const/high16 v8, 0x4000

    div-float/2addr v2, v8

    mul-float/2addr v2, v7

    sub-float v8, v1, v2

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    mul-float/2addr v1, v4

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    .line 284
    const/4 v11, 0x1

    const/16 v12, 0x1f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 282
    invoke-direct/range {v1 .. v12}, Lcom/muvee/video/trimer/view/ThumbView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFIZI)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    div-float v14, v1, v2

    .line 289
    .local v14, fR:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v23, v0

    .line 291
    .local v23, topPosition:I
    const-string v1, "Video-Trim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::onDraw:r="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/high16 v1, 0x3f80

    cmpg-float v1, v6, v1

    if-gez v1, :cond_0

    .line 294
    move-object/from16 v0, p0

    iget v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v23, v0

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    div-float v14, v1, v2

    .line 304
    :cond_0
    const/16 v20, 0x4

    .line 305
    .local v20, gap:I
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    mul-float v2, v4, v6

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    move/from16 v0, v20

    int-to-float v2, v0

    add-float v15, v1, v2

    .line 306
    .local v15, position:F
    const/16 v21, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/ThumbView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v15, v1

    if-ltz v1, :cond_4

    .line 312
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    mul-float v2, v4, v6

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    mul-float/2addr v2, v7

    sub-float v15, v1, v2

    .line 313
    const/16 v21, 0x1

    :goto_2
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-gtz v1, :cond_5

    .line 334
    .end local v4           #height:F
    .end local v5           #width:F
    .end local v6           #r:F
    .end local v7           #mR:F
    .end local v14           #fR:F
    .end local v15           #position:F
    .end local v20           #gap:I
    .end local v21           #i:I
    .end local v23           #topPosition:I
    :cond_1
    :goto_3
    return-void

    .line 243
    .restart local v4       #height:F
    .restart local v5       #width:F
    .restart local v6       #r:F
    .restart local v21       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v1, v1, v21

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/muvee/video/trimer/MediaDetail;->mRectF:Landroid/graphics/RectF;

    .line 244
    move-object/from16 v0, p0

    iget v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    sub-int v1, v21, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    aget-object v1, v1, v21

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/muvee/video/trimer/MediaDetail;->setBitmap([B)V

    .line 242
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 307
    .restart local v7       #mR:F
    .restart local v14       #fR:F
    .restart local v15       #position:F
    .restart local v20       #gap:I
    .restart local v23       #topPosition:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/muvee/video/trimer/view/ThumbView;->mPaint:Landroid/graphics/Paint;

    .line 308
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    add-int v17, v1, v21

    const/16 v18, 0x1

    const/16 v19, 0x3f

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v4

    move v12, v5

    move v13, v6

    .line 307
    invoke-direct/range {v8 .. v19}, Lcom/muvee/video/trimer/view/ThumbView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFIZI)V

    .line 309
    mul-float v1, v14, v4

    mul-float/2addr v1, v6

    move/from16 v0, v20

    int-to-float v2, v0

    add-float/2addr v1, v2

    add-float/2addr v15, v1

    .line 306
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 314
    :cond_5
    mul-float v1, v14, v4

    mul-float/2addr v1, v6

    sub-float/2addr v15, v1

    .line 315
    move/from16 v0, v20

    int-to-float v1, v0

    sub-float/2addr v15, v1

    .line 316
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/muvee/video/trimer/view/ThumbView;->mPaint:Landroid/graphics/Paint;

    .line 317
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    sub-int v17, v1, v21

    const/16 v18, 0x1

    const/16 v19, 0x3f

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v4

    move v12, v5

    move v13, v6

    .line 316
    invoke-direct/range {v8 .. v19}, Lcom/muvee/video/trimer/view/ThumbView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFIZI)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 327
    .end local v4           #height:F
    .end local v5           #width:F
    .end local v6           #r:F
    .end local v7           #mR:F
    .end local v14           #fR:F
    .end local v15           #position:F
    .end local v20           #gap:I
    .end local v21           #i:I
    .end local v23           #topPosition:I
    :catch_0
    move-exception v22

    .line 328
    .local v22, outOfMemoryError:Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/ThumbView;->removeRunnable()V

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

    if-eqz v1, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/muvee/video/trimer/view/ThumbView;->mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

    invoke-interface {v1}, Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;->onOutOfMemoryError()V

    goto/16 :goto_3
.end method

.method public removeCallbacks()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 857
    return-void
.end method

.method public removeRunnable()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    .line 701
    :cond_0
    return-void
.end method

.method public setCurrentPosition(ILandroid/view/View;ZZ)I
    .locals 5
    .parameter "currentPosition"
    .parameter "view"
    .parameter "genarateThumb"
    .parameter "left"

    .prologue
    .line 539
    const-string v1, "Video-Trim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::setCurrentPosition:mCurrentPositionIndex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eqz p3, :cond_1

    .line 541
    invoke-direct {p0, p1, p4}, Lcom/muvee/video/trimer/view/ThumbView;->getNearestPositionIndex(IZ)I

    move-result v0

    .line 542
    .local v0, newIndex:I
    const-string v1, "Video-Trim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::setCurrentPosition:newIndex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    if-eq v1, v0, :cond_0

    .line 544
    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    .line 545
    invoke-direct {p0, v0, p2}, Lcom/muvee/video/trimer/view/ThumbView;->generateThumb(ILandroid/view/View;)V

    .line 546
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/ThumbView;->invalidate()V

    .line 548
    :cond_0
    const-string v1, "Video-Trim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::setCurrentPosition:mMediaDetails[mCurrentPositionIndex].mTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    iget v4, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    iget v2, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    .line 561
    :goto_0
    return v1

    .line 554
    .end local v0           #newIndex:I
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/muvee/video/trimer/view/ThumbView;->getNearestPositionIndex(IZ)I

    move-result v0

    .line 555
    .restart local v0       #newIndex:I
    iget v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    if-eq v1, v0, :cond_2

    .line 556
    iput v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    .line 558
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/ThumbView;->invalidate()V

    .line 560
    :cond_2
    const-string v1, "Video-Trim"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::setCurrentPosition:mMediaDetails[mCurrentPositionIndex].mTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    iget v4, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    iget v2, p0, Lcom/muvee/video/trimer/view/ThumbView;->mCurrentPositionIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    goto :goto_0
.end method

.method public setMediaDetails([Lcom/muvee/video/trimer/MediaDetail;)V
    .locals 0
    .parameter "mediaDetails"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;

    .line 843
    return-void
.end method

.method public setMiddleThumbHeight(F)V
    .locals 0
    .parameter "middleThumbHeight"

    .prologue
    .line 876
    iput p1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mMiddleThumbHeight:F

    .line 877
    return-void
.end method

.method public setOnErrorListener(Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;)V
    .locals 0
    .parameter "onErrorListener"

    .prologue
    .line 868
    iput-object p1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;

    .line 869
    return-void
.end method

.method public setOnOutOfMemoryErrorListener(Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;)V
    .locals 0
    .parameter "onOutOfMemoryErrorListener"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mOnOutOfMemoryErrorListener:Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;

    .line 861
    return-void
.end method

.method public setThumbHeights([F)V
    .locals 0
    .parameter "thumbHeights"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/muvee/video/trimer/view/ThumbView;->mThumbHeights:[F

    .line 885
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 847
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 848
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/muvee/video/trimer/view/ThumbView;->runnable:Lcom/muvee/video/trimer/view/ThumbView$GenarateRunnable;

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 851
    const-string v0, "Video-Trim"

    const-string v1, "Stop progress dialog 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    return-void
.end method
