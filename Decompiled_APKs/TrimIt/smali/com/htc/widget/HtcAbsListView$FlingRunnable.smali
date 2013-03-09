.class public Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingX:I

.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 3296
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3297
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 3298
    return-void
.end method


# virtual methods
.method endFling()V
    .locals 2

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3339
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3340
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3342
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3344
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v1}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3347
    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 3350
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_0

    .line 3437
    :goto_0
    return-void

    .line 3355
    :pswitch_0
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView;->mItemCount:I

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 3356
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 3360
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 3361
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v4

    .line 3362
    .local v4, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    .line 3365
    .local v8, y:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    .line 3370
    .local v7, x:I
    iget v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v9, v8

    .line 3373
    .local v1, delta:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3374
    iget v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int v1, v9, v7

    .line 3377
    :cond_2
    if-lez v1, :cond_5

    .line 3379
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3380
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3381
    .local v2, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3384
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$900(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1000(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3387
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3388
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalLeft:I

    .line 3391
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1100(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3413
    .end local v2           #firstView:Landroid/view/View;
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v9, v9, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v9, :cond_4

    .line 3414
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v9, v9, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    invoke-interface {v9, v11, v1, v11, v11}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 3417
    :cond_4
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9, v1, v1}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3419
    .local v0, atEnd:Z
    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 3420
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3421
    iput v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 3422
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3395
    .end local v0           #atEnd:Z
    :cond_5
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 3396
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 3398
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3399
    .local v3, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 3402
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1300(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1400(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3405
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3406
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalLeft:I

    .line 3409
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1500(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView;->access$1600(Lcom/htc/widget/HtcAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_1

    .line 3424
    .end local v3           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 3350
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public start(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3306
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 3307
    .local v1, initialX:I
    :goto_0
    iput v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingX:I

    .line 3308
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 3317
    .end local v1           #initialX:I
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3318
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3326
    return-void

    .line 3306
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3311
    :cond_1
    if-gez p1, :cond_2

    const v4, 0x7fffffff

    .line 3312
    .local v4, initialY:I
    :goto_2
    iput v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 3313
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_1

    .line 3311
    .end local v4           #initialY:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3329
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 3330
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    .line 3331
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 3332
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3333
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3334
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 3329
    goto :goto_0
.end method
