.class public Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcAbsListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingX:I

.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    return-void
.end method

.method public run()V
    .locals 12

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->endFling()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    sub-int v0, v9, v7

    :goto_1
    if-lez v0, :cond_6

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$700(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$800(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    if-eq v9, v10, :cond_3

    const/4 v3, 0x0

    :cond_3
    :goto_3
    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    iput v7, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$900(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1000(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1100(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1200(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    :cond_7
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1300(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HtcAbsListView2;->access$1400(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_3

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 11

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v2, 0x4

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const v4, 0x7fffffff

    :goto_2
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
