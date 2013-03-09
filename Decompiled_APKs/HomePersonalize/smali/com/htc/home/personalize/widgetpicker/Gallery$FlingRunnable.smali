.class Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/widgetpicker/Gallery;)V
    .locals 2
    .parameter

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1358
    return-void
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1403
    if-eqz p1, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #calls: Lcom/htc/home/personalize/widgetpicker/Gallery;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$500(Lcom/htc/home/personalize/widgetpicker/Gallery;)V

    .line 1405
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1363
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1409
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    iget v5, v5, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1410
    invoke-direct {p0, v7}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->endFling(Z)V

    .line 1451
    :goto_0
    return-void

    .line 1414
    :cond_0
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    const/4 v6, 0x0

    #setter for: Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldStopFling:Z
    invoke-static {v5, v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$602(Lcom/htc/home/personalize/widgetpicker/Gallery;Z)Z

    .line 1416
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1417
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1418
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1422
    .local v4, x:I
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1425
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 1427
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    iget v6, v6, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$702(Lcom/htc/home/personalize/widgetpicker/Gallery;I)I

    .line 1430
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #getter for: Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$800(Lcom/htc/home/personalize/widgetpicker/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #getter for: Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$900(Lcom/htc/home/personalize/widgetpicker/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1443
    :goto_1
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v5, v0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->trackMotionScroll(I)V

    .line 1445
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #getter for: Lcom/htc/home/personalize/widgetpicker/Gallery;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$600(Lcom/htc/home/personalize/widgetpicker/Gallery;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1446
    iput v4, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1447
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v5, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1434
    :cond_1
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1435
    .local v2, offsetToLast:I
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    iget v6, v6, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    #setter for: Lcom/htc/home/personalize/widgetpicker/Gallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$702(Lcom/htc/home/personalize/widgetpicker/Gallery;I)I

    .line 1438
    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v5}, Lcom/htc/home/personalize/widgetpicker/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #getter for: Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$1000(Lcom/htc/home/personalize/widgetpicker/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #getter for: Lcom/htc/home/personalize/widgetpicker/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$1100(Lcom/htc/home/personalize/widgetpicker/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1449
    .end local v2           #offsetToLast:I
    :cond_2
    invoke-direct {p0, v7}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1381
    if-nez p1, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1384
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->startCommon()V

    .line 1386
    iput v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1387
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    #getter for: Lcom/htc/home/personalize/widgetpicker/Gallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/home/personalize/widgetpicker/Gallery;->access$400(Lcom/htc/home/personalize/widgetpicker/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1388
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1366
    if-nez p1, :cond_0

    .line 1378
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->startCommon()V

    .line 1371
    if-gez p1, :cond_1

    move v1, v6

    .line 1372
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1373
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1377
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_1
    move v1, v2

    .line 1371
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->this$0:Lcom/htc/home/personalize/widgetpicker/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widgetpicker/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1393
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widgetpicker/Gallery$FlingRunnable;->endFling(Z)V

    .line 1394
    return-void
.end method
