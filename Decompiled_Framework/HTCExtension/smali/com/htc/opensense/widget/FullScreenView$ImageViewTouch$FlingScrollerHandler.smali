.class Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
.super Ljava/lang/Object;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
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

.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-direct {p0, p2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->initDeviceFPS(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    return v0
.end method

.method static synthetic access$3308(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I

    return v0
.end method

.method private initDeviceFPS(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x3c

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    :goto_1
    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :sswitch_0
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x4b

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    :sswitch_2
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

    :sswitch_3
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    goto :goto_1

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

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrentY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public getStartX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v0

    return v0
.end method

.method public getStartY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public startScroll(IIIIIIII)V
    .locals 10

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    if-gez p3, :cond_2

    const/16 p3, -0x3e8

    :cond_0
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    if-gez p4, :cond_3

    const/16 p4, -0x3e8

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    sub-int v3, v0, p1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    sub-int v4, v0, p2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v5

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v9

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mDeviceFPS:I

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I

    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    return-void

    :cond_2
    const/16 p3, 0x3e8

    goto :goto_0

    :cond_3
    const/16 p4, 0x3e8

    goto :goto_1
.end method

.method public stopScroll()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I

    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    return-void
.end method
