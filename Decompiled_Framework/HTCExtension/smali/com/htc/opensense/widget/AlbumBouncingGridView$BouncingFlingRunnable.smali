.class Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;
.super Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;
.source "AlbumBouncingGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumBouncingGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BouncingFlingRunnable"
.end annotation


# instance fields
.field private isNeedCheckOverBottom:Z

.field private isNeedCheckOverTop:Z

.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/AlbumBouncingGridView;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/AlbumBouncingGridView;Lcom/htc/opensense/widget/AlbumBouncingGridView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumBouncingGridView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverTopBoundary()Z
    invoke-static {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$400(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v4, v4, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTopBorderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverBottonBoundary()Z
    invoke-static {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$900(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v4, v4, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getBottomBorderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I
    invoke-static {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$1000(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v4, v4, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTopBorderHeight()I

    move-result v4

    add-int v1, v3, v4

    if-ge v1, v0, :cond_2

    move v2, v1

    :goto_1
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    const/4 v4, -0x1

    iput v4, v3, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->reportScrollStateChange(I)V

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->clearScrollingCache()V

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V
    invoke-static {v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$300(Lcom/htc/opensense/widget/AlbumBouncingGridView;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 11

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v8, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v8, v8, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    :cond_2
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverTopBoundary()Z
    invoke-static {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$400(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->endFling()V

    :cond_3
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v7

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v8, v7

    if-lez v0, :cond_5

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$500(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$600(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8, v0, v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->trackMotionScroll(II)V

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget-object v10, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v10, v10, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    if-eq v8, v9, :cond_4

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;
    invoke-static {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;
    invoke-static {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_6

    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8, p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8, v5}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$700(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$800(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$300(Lcom/htc/opensense/widget/AlbumBouncingGridView;)V

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method public startByDistance(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    :goto_0
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    const/16 v5, 0x1f4

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v6}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$000(Lcom/htc/opensense/widget/AlbumBouncingGridView;Z)V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #calls: Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v6}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$100(Lcom/htc/opensense/widget/AlbumBouncingGridView;Z)V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 7

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    #getter for: Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumBouncingGridView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
