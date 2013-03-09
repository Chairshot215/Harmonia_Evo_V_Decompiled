.class Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;
.super Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.source "BouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/BouncingListView;
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

.field final synthetic this$0:Lcom/htc/widget/BouncingListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/BouncingListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 364
    iput-object p1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    .line 366
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 367
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 370
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 371
    iput-boolean v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 10

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 615
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 616
    iget-boolean v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$700(Lcom/htc/widget/BouncingListView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 617
    iput-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 618
    iput-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 619
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    .line 666
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #setter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v6, v9}, Lcom/htc/widget/BouncingListView;->access$1702(Lcom/htc/widget/BouncingListView;Z)Z

    .line 669
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6, v9}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 671
    return-void

    .line 620
    :cond_1
    iget-boolean v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$1800(Lcom/htc/widget/BouncingListView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 621
    iput-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 623
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getRightBorderWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v8, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 625
    .local v2, distanceToRight:I
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$1900(Lcom/htc/widget/BouncingListView;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v8, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v7

    add-int v1, v6, v7

    .line 628
    .local v1, distanceToLeft:I
    if-ge v1, v2, :cond_2

    move v4, v1

    .line 630
    .local v4, scrollDistance:I
    :goto_1
    neg-int v6, v4

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v4           #scrollDistance:I
    :cond_2
    move v4, v2

    .line 628
    goto :goto_1

    .line 632
    .end local v1           #distanceToLeft:I
    .end local v2           #distanceToRight:I
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iput v7, v6, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    .line 633
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->reportScrollStateChange(I)V

    .line 634
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->clearScrollingCache()V

    .line 635
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$600(Lcom/htc/widget/BouncingListView;)V

    goto/16 :goto_0

    .line 638
    :cond_4
    iget-boolean v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$800(Lcom/htc/widget/BouncingListView;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 639
    iput-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 640
    iput-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 641
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .line 642
    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$2000(Lcom/htc/widget/BouncingListView;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 643
    iput-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 645
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v8, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 647
    .local v0, distanceToBottom:I
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$2100(Lcom/htc/widget/BouncingListView;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v8, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v8}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v7

    add-int v3, v6, v7

    .line 650
    .local v3, distanceToTop:I
    if-ge v3, v0, :cond_6

    move v4, v3

    .line 652
    .restart local v4       #scrollDistance:I
    :goto_2
    neg-int v6, v4

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .end local v4           #scrollDistance:I
    :cond_6
    move v4, v0

    .line 650
    goto :goto_2

    .line 654
    .end local v0           #distanceToBottom:I
    .end local v3           #distanceToTop:I
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iput v7, v6, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    .line 655
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->reportScrollStateChange(I)V

    .line 656
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->clearScrollingCache()V

    .line 657
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v7, v7, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 658
    .local v5, topBound:I
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$600(Lcom/htc/widget/BouncingListView;)V

    .line 659
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v6}, Lcom/htc/widget/BouncingListView;->access$1700(Lcom/htc/widget/BouncingListView;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v6, v6, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 661
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #setter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v6, v9}, Lcom/htc/widget/BouncingListView;->access$1702(Lcom/htc/widget/BouncingListView;Z)Z

    .line 662
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v6, v9}, Lcom/htc/widget/BouncingListView;->smoothScrollToPosition(I)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 468
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v9, v9, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 611
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v9, v9, Lcom/htc/widget/BouncingListView;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 479
    iget-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-nez v9, :cond_3

    .line 480
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/BouncingListView;->access$700(Lcom/htc/widget/BouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    .line 492
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 493
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 495
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    .line 496
    .local v8, y:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    .line 498
    .local v7, x:I
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 503
    iget v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    sub-int v0, v9, v7

    .line 506
    .local v0, delta:I
    if-lez v0, :cond_6

    .line 509
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionPosition:I

    .line 510
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 511
    .local v1, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionViewOriginalLeft:I

    .line 514
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$900(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1000(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 531
    .end local v1           #firstView:Landroid/view/View;
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/BouncingListView;->trackMotionScroll(II)Z

    .line 534
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v11, v11, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 535
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 538
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mMotionViewNewLeft:I

    if-eq v9, v10, :cond_4

    .line 539
    const/4 v3, 0x0

    .line 593
    :cond_4
    :goto_3
    if-eqz v3, :cond_b

    .line 595
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 596
    iput v7, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    .line 601
    :goto_4
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/BouncingListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 485
    .end local v0           #delta:I
    .end local v3           #more:Z
    .end local v4           #motionView:Landroid/view/View;
    .end local v6           #scroller:Lcom/htc/widget/HtcScroller;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_5
    iget-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v9, :cond_3

    .line 486
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/BouncingListView;->access$800(Lcom/htc/widget/BouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 487
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_1

    .line 519
    .restart local v0       #delta:I
    .restart local v3       #more:Z
    .restart local v6       #scroller:Lcom/htc/widget/HtcScroller;
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 520
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionPosition:I

    .line 522
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 523
    .local v2, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionViewOriginalLeft:I

    .line 526
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1100(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1200(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_2

    .line 547
    .end local v0           #delta:I
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    :cond_7
    iget v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    .line 550
    .restart local v0       #delta:I
    if-lez v0, :cond_9

    .line 553
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionPosition:I

    .line 554
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 555
    .restart local v1       #firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionViewOriginalTop:I

    .line 558
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1300(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1400(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 575
    .end local v1           #firstView:Landroid/view/View;
    :goto_5
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v9, v9, Lcom/htc/widget/BouncingListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    if-eqz v9, :cond_8

    .line 576
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v9, v9, Lcom/htc/widget/BouncingListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    invoke-interface {v9, v11, v0, v11, v11}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    .line 579
    :cond_8
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/BouncingListView;->trackMotionScroll(II)Z

    .line 582
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v11, v11, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 583
    .restart local v4       #motionView:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 586
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_4

    .line 587
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    const/4 v10, 0x1

    #setter for: Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z
    invoke-static {v9, v10}, Lcom/htc/widget/BouncingListView;->access$1702(Lcom/htc/widget/BouncingListView;Z)Z

    .line 588
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 563
    .end local v4           #motionView:Landroid/view/View;
    :cond_9
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 564
    .restart local v5       #offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iget v10, v10, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionPosition:I

    .line 566
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 567
    .restart local v2       #lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/BouncingListView;->mMotionViewOriginalTop:I

    .line 570
    iget-object v9, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1500(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #getter for: Lcom/htc/widget/BouncingListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/BouncingListView;->access$1600(Lcom/htc/widget/BouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 598
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_a
    iput v8, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    .line 603
    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x1

    .line 452
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 454
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 460
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/widget/BouncingListView;->access$600(Lcom/htc/widget/BouncingListView;)V

    .line 461
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 463
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 465
    return-void

    .line 456
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 457
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistance(I)V
    .locals 14
    .parameter "distance"

    .prologue
    const/16 v5, 0x1f4

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    if-ltz p1, :cond_1

    .line 378
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 379
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 384
    :goto_0
    invoke-static {}, Lcom/htc/widget/BouncingListView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
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

    .line 386
    :cond_0
    iput v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    .line 387
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 388
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iput v13, v0, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    .line 389
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->enableScrollOverLeftBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/BouncingListView;->access$200(Lcom/htc/widget/BouncingListView;Z)V

    .line 390
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->enableScrollOverRightBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/BouncingListView;->access$300(Lcom/htc/widget/BouncingListView;Z)V

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/BouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 417
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v12}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 419
    return-void

    .line 381
    :cond_1
    iput-boolean v12, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 382
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    goto :goto_0

    .line 392
    :cond_2
    if-ltz p1, :cond_4

    .line 393
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 394
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 399
    :goto_2
    invoke-static {}, Lcom/htc/widget/BouncingListView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
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

    .line 401
    :cond_3
    iput v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    .line 402
    iget-object v6, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v8, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    move v7, v2

    move v9, v2

    move v10, p1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 403
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    iput v13, v0, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    .line 404
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/BouncingListView;->access$400(Lcom/htc/widget/BouncingListView;Z)V

    .line 405
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    #calls: Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/BouncingListView;->access$500(Lcom/htc/widget/BouncingListView;Z)V

    goto :goto_1

    .line 396
    :cond_4
    iput-boolean v12, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 397
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_2
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 8
    .parameter "distance"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iput v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    .line 426
    invoke-static {}, Lcom/htc/widget/BouncingListView;->access$100()Z

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

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    .line 436
    iget-object v0, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/BouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 445
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 447
    return-void

    .line 429
    :cond_1
    iput v2, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    .line 430
    invoke-static {}, Lcom/htc/widget/BouncingListView;->access$100()Z

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

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v3, p0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->mLastFlingY:I

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
