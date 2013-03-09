.class public Lcom/htc/view/table/AbstractTableView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final SCROLL_MODE_FLING:I = 0x0

.field private static final SCROLL_MODE_RETURN:I = 0x1


# instance fields
.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mScrollMode:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 2
    .parameter

    .prologue
    .line 2780
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2782
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2783
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private getAnimationDurationAlongDistance(I)I
    .locals 2
    .parameter "distance"

    .prologue
    .line 2832
    mul-int/lit8 v0, p1, 0xa

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2792
    return-void
.end method


# virtual methods
.method public endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2856
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    if-nez v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 2862
    :goto_0
    return-void

    .line 2859
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2869
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v6, v6, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    if-nez v6, :cond_0

    .line 2871
    invoke-virtual {p0, v8}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 2912
    :goto_0
    return-void

    .line 2875
    :cond_0
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v7, 0x0

    #setter for: Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z
    invoke-static {v6, v7}, Lcom/htc/view/table/AbstractTableView;->access$1102(Lcom/htc/view/table/AbstractTableView;Z)Z

    .line 2877
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2878
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 2879
    .local v2, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 2880
    .local v4, x:I
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 2884
    .local v5, y:I
    iget v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    sub-int v0, v6, v4

    .line 2885
    .local v0, deltaX:I
    iget v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v6, v5

    .line 2888
    .local v1, deltaY:I
    if-lez v0, :cond_1

    .line 2890
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1200(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1300(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2895
    :goto_1
    if-lez v1, :cond_2

    .line 2896
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1600(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1700(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2902
    :goto_2
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-object v6, v6, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    invoke-virtual {v6, v0, v1, v8}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 2904
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mShouldStopFling:Z
    invoke-static {v6}, Lcom/htc/view/table/AbstractTableView;->access$1100(Lcom/htc/view/table/AbstractTableView;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2905
    iput v4, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 2906
    iput v5, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 2907
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6, p0}, Lcom/htc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2893
    :cond_1
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1400(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1500(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2899
    :cond_2
    iget-object v6, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/view/table/AbstractTableView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1800(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #getter for: Lcom/htc/view/table/AbstractTableView;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/view/table/AbstractTableView;->access$1900(Lcom/htc/view/table/AbstractTableView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 2910
    :cond_3
    invoke-virtual {p0, v8}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(II)V
    .locals 7
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v1, 0x0

    .line 2819
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2829
    :goto_0
    return-void

    .line 2821
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    .line 2822
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startCommon()V

    .line 2824
    iput v1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 2825
    iput v1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 2826
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    neg-int v4, p2

    mul-int v2, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v2, v5

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-direct {p0, v2}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->getAnimationDurationAlongDistance(I)I

    move-result v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2827
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 2828
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public startUsingVelocity(II)V
    .locals 9
    .parameter "initialVelocityX"
    .parameter "initialVelocityY"

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 2799
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2812
    :goto_0
    return-void

    .line 2801
    :cond_0
    iput v5, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    .line 2802
    invoke-direct {p0}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->startCommon()V

    .line 2804
    if-gtz p1, :cond_1

    move v1, v6

    .line 2805
    .local v1, initialX:I
    :goto_1
    if-gtz p2, :cond_2

    move v2, v6

    .line 2806
    .local v2, initialY:I
    :goto_2
    iput v1, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 2807
    iput v2, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 2808
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2810
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 2811
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/htc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0

    .end local v1           #initialX:I
    .end local v2           #initialY:I
    :cond_1
    move v1, v5

    .line 2804
    goto :goto_1

    .restart local v1       #initialX:I
    :cond_2
    move v2, v5

    .line 2805
    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2842
    invoke-virtual {p0, p1}, Lcom/htc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 2843
    return-void
.end method
