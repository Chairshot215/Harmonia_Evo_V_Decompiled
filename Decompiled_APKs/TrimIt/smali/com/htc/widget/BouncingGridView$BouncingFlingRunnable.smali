.class public Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;
.super Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.source "BouncingGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/BouncingGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BouncingFlingRunnable"
.end annotation


# instance fields
.field protected isNeedCheckOverBottom:Z

.field protected isNeedCheckOverTop:Z

.field final synthetic this$0:Lcom/htc/widget/BouncingGridView;


# direct methods
.method protected constructor <init>(Lcom/htc/widget/BouncingGridView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 236
    iput-object p1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    .line 238
    iput-boolean v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 239
    iput-boolean v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 380
    iget-boolean v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v3}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    iput-boolean v6, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 382
    iput-boolean v6, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 383
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v4, v4, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v4}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    .line 402
    :goto_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v6}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 405
    return-void

    .line 384
    :cond_0
    iget-boolean v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v3}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 385
    iput-boolean v6, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 387
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v3}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v4, v4, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v4}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v5, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 389
    .local v0, distanceToBottom:I
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #getter for: Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I
    invoke-static {v3}, Lcom/htc/widget/BouncingGridView;->access$600(Lcom/htc/widget/BouncingGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v5, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v5}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v4, v4, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v4}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v4

    add-int v1, v3, v4

    .line 392
    .local v1, distanceToTop:I
    if-ge v1, v0, :cond_1

    move v2, v1

    .line 394
    .local v2, scrollDistance:I
    :goto_1
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v2           #scrollDistance:I
    :cond_1
    move v2, v0

    .line 392
    goto :goto_1

    .line 396
    .end local v0           #distanceToBottom:I
    .end local v1           #distanceToTop:I
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    const/4 v4, -0x1

    iput v4, v3, Lcom/htc/widget/BouncingGridView;->mTouchMode:I

    .line 397
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/BouncingGridView;->reportScrollStateChange(I)V

    .line 398
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v3}, Lcom/htc/widget/BouncingGridView;->clearScrollingCache()V

    .line 399
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #calls: Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V
    invoke-static {v3}, Lcom/htc/widget/BouncingGridView;->access$100(Lcom/htc/widget/BouncingGridView;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 299
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v8, v8, Lcom/htc/widget/BouncingGridView;->mTouchMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 377
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v8, v8, Lcom/htc/widget/BouncingGridView;->mItemCount:I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    .line 308
    :cond_2
    iget-boolean v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v8, :cond_3

    .line 309
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->endFling()V

    .line 314
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 315
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 316
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v7

    .line 321
    .local v7, y:I
    iget v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mLastFlingY:I

    sub-int v0, v8, v7

    .line 324
    .local v0, delta:I
    if-lez v0, :cond_6

    .line 327
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v9, v9, Lcom/htc/widget/BouncingGridView;->mFirstPosition:I

    iput v9, v8, Lcom/htc/widget/BouncingGridView;->mMotionPosition:I

    .line 328
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8, v10}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, firstView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/widget/BouncingGridView;->mMotionViewOriginalTop:I

    .line 332
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #getter for: Lcom/htc/widget/BouncingGridView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/widget/BouncingGridView;->access$200(Lcom/htc/widget/BouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #getter for: Lcom/htc/widget/BouncingGridView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/widget/BouncingGridView;->access$300(Lcom/htc/widget/BouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 349
    .end local v1           #firstView:Landroid/view/View;
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v8, v8, Lcom/htc/widget/BouncingGridView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v8, :cond_4

    .line 350
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v8, v8, Lcom/htc/widget/BouncingGridView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    invoke-interface {v8, v10, v0, v10, v10}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 353
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8, v0, v0}, Lcom/htc/widget/BouncingGridView;->trackMotionScroll(II)Z

    .line 356
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v9, v9, Lcom/htc/widget/BouncingGridView;->mMotionPosition:I

    iget-object v10, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v10, v10, Lcom/htc/widget/BouncingGridView;->mFirstPosition:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 357
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_5

    .line 360
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v9, v9, Lcom/htc/widget/BouncingGridView;->mMotionViewNewTop:I

    if-eq v8, v9, :cond_5

    .line 361
    const/4 v3, 0x0

    .line 365
    :cond_5
    if-eqz v3, :cond_7

    .line 366
    iput v7, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mLastFlingY:I

    .line 367
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8, p0}, Lcom/htc/widget/BouncingGridView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 337
    .end local v4           #motionView:Landroid/view/View;
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 338
    .local v5, offsetToLast:I
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    iget v9, v9, Lcom/htc/widget/BouncingGridView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/htc/widget/BouncingGridView;->mMotionPosition:I

    .line 340
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8, v5}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 341
    .local v2, lastView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/widget/BouncingGridView;->mMotionViewOriginalTop:I

    .line 344
    iget-object v8, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #getter for: Lcom/htc/widget/BouncingGridView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/widget/BouncingGridView;->access$400(Lcom/htc/widget/BouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #getter for: Lcom/htc/widget/BouncingGridView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/widget/BouncingGridView;->access$500(Lcom/htc/widget/BouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 369
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x1

    .line 271
    iput-boolean v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 272
    iput-boolean v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 273
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    #calls: Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/widget/BouncingGridView;->access$100(Lcom/htc/widget/BouncingGridView;)V

    .line 274
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 276
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 278
    return-void
.end method

.method public startByDistance(I)V
    .locals 7
    .parameter "distance"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 242
    if-ltz p1, :cond_1

    .line 243
    iput-boolean v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 244
    iput-boolean v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 249
    :goto_0
    invoke-static {}, Lcom/htc/widget/BouncingGridView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "BouncingGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iput v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mLastFlingY:I

    .line 252
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mLastFlingY:I

    const/16 v5, 0x1f4

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 253
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/BouncingGridView;->mTouchMode:I

    .line 254
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v0, v6}, Lcom/htc/widget/BouncingGridView;->enableScrollOverTopBoundary(Z)V

    .line 255
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v0, v6}, Lcom/htc/widget/BouncingGridView;->enableScrollOverBottomBoundary(Z)V

    .line 256
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/BouncingGridView;->post(Ljava/lang/Runnable;)Z

    .line 265
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 267
    return-void

    .line 246
    :cond_1
    iput-boolean v6, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 247
    iput-boolean v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 7
    .parameter "distance"
    .parameter "velocity"

    .prologue
    const/4 v1, 0x0

    .line 281
    iput v1, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mLastFlingY:I

    .line 282
    invoke-static {}, Lcom/htc/widget/BouncingGridView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BouncingGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->mLastFlingY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    .line 284
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/BouncingGridView;->mTouchMode:I

    .line 285
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingGridView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/BouncingGridView;->post(Ljava/lang/Runnable;)Z

    .line 294
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 296
    return-void
.end method
