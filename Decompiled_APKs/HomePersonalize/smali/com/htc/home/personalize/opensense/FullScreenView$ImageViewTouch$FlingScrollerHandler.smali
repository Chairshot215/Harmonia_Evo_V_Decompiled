.class Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;
.super Ljava/lang/Object;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingScrollerHandler"
.end annotation


# static fields
.field private static final MAX_VELOCITY:I = 0x3e8


# instance fields
.field private mDeviceFPS:I

.field private mFrameCount:I

.field private mScroller:Lcom/htc/widget/HtcScroller;

.field private mTotalFrame:I

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1336
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 1338
    invoke-direct {p0, p2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->initDeviceFPS(Landroid/content/Context;)V

    .line 1339
    return-void
.end method

.method static synthetic access$3000(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1326
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    return v0
.end method

.method static synthetic access$3008(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 1326
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1326
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I

    return v0
.end method

.method private initDeviceFPS(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x3c

    .line 1419
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1420
    .local v0, dm:Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1421
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1422
    .local v1, resolution:I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 1436
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    .line 1439
    :goto_1
    return-void

    .line 1421
    .end local v1           #resolution:I
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 1424
    .restart local v1       #resolution:I
    :sswitch_0
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    .line 1427
    :sswitch_1
    const/16 v2, 0x4b

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    .line 1430
    :sswitch_2
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    .line 1433
    :sswitch_3
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    .line 1422
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x190 -> :sswitch_3
        0x1e0 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public computeNextPos()Z
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1378
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentX()I
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrentY()I
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v0

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public startScroll(IIIIIIII)V
    .locals 10
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 1343
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1344
    if-gez p3, :cond_2

    const/16 p3, -0x3e8

    .line 1345
    :cond_0
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 1346
    if-gez p4, :cond_3

    const/16 p4, -0x3e8

    .line 1348
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 1352
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    sub-int v3, v0, p1

    .line 1353
    .local v3, nDeltaX:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    sub-int v4, v0, p2

    .line 1354
    .local v4, nDelataY:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v5

    .line 1355
    .local v5, nDuration:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    .line 1357
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 1359
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v9

    .line 1360
    .local v9, duration:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    .line 1361
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    .line 1362
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I

    .line 1364
    sget-object v0, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 1365
    return-void

    .line 1344
    .end local v3           #nDeltaX:I
    .end local v4           #nDelataY:I
    .end local v5           #nDuration:I
    .end local v9           #duration:I
    :cond_2
    const/16 p3, 0x3e8

    goto :goto_0

    .line 1346
    :cond_3
    const/16 p4, 0x3e8

    goto :goto_1
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    .line 1370
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    .line 1371
    sget-object v0, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 1372
    return-void
.end method
