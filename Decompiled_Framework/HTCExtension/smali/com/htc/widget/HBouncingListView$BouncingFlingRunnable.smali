.class Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;
.super Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
.source "HBouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HBouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BouncingFlingRunnable"
.end annotation


# instance fields
.field private isNeedCheckOverBottom:Z

.field private isNeedCheckOverLeft:Z

.field private isNeedCheckOverRight:Z

.field private isNeedCheckOverTop:Z

.field final synthetic this$0:Lcom/htc/widget/HBouncingListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HBouncingListView;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HBouncingListView;Lcom/htc/widget/HBouncingListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/HBouncingListView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v2, v5, v6

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1700(Lcom/htc/widget/HBouncingListView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    add-int v1, v5, v6

    if-ge v1, v2, :cond_1

    move v4, v1

    :goto_1
    neg-int v5, v4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v7, v5, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->clearScrollingCache()V

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$700(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1800(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v5, v6

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1900(Lcom/htc/widget/HBouncingListView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    add-int v3, v5, v6

    if-ge v3, v0, :cond_5

    move v4, v3

    :goto_2
    neg-int v5, v4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    :cond_5
    move v4, v0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v7, v5, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->clearScrollingCache()V

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v9, v9, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v9, v9, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/HBouncingListView;->access$600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    sub-int v0, v9, v7

    if-lez v0, :cond_6

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$800(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$900(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HBouncingListView;->trackMotionScroll(II)V

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    if-eq v9, v10, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_3
    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    iput v7, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/HBouncingListView;->access$700(Lcom/htc/widget/HBouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1000(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1100(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_2

    :cond_7
    iget v9, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    if-lez v0, :cond_8

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1200(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1300(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HBouncingListView;->trackMotionScroll(II)V

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v11, v11, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_4

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_8
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1400(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1500(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistance(I)V
    .locals 14

    const/16 v5, 0x1f4

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    :goto_0
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v13, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$100(Lcom/htc/widget/HBouncingListView;Z)V

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$200(Lcom/htc/widget/HBouncingListView;Z)V

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v12, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_4

    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    :goto_2
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    move v7, v2

    move v9, v2

    move v10, p1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v13, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$300(Lcom/htc/widget/HBouncingListView;Z)V

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$400(Lcom/htc/widget/HBouncingListView;Z)V

    goto :goto_1

    :cond_4
    iput-boolean v12, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_2
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->mLastFlingY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-instance v7, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v7}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v4, v2

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    goto :goto_0
.end method
