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
.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-void
.end method


# virtual methods
.method endFling()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;
    invoke-static {v1}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v8, v8, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v8, v8, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v4

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v8, v7

    if-lez v1, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$900(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$1000(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v8, v8, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v8, v8, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    invoke-interface {v8, v10, v1, v10, v10}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    :cond_2
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, v1, v1}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    iput v7, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$1100(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/widget/HtcAbsListView;->access$1200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public start(I)V
    .locals 9

    const v6, 0x7fffffff

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move v2, v6

    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v2, v1

    goto :goto_0
.end method
