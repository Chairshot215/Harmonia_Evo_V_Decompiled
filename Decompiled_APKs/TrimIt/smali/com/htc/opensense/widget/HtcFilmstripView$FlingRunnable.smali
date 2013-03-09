.class Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcFilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mDeviceFPS:I

.field private mEaseFunction:Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;

.field private mFrameCount:I

.field private mIsByFrame:Z

.field private mLastFlingX:I

.field private mScroller:Lcom/htc/widget/HtcScroller;

.field private mStartTime:J

.field private mTotalFrame:I

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcFilmstripView;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3c

    .line 1666
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1659
    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    .line 1660
    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    .line 1661
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    .line 1662
    new-instance v2, Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-direct {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mEaseFunction:Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;

    .line 1663
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    .line 1664
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mStartTime:J

    .line 1667
    new-instance v2, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 1669
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1670
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1671
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1672
    .local v1, resolution:I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 1686
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    .line 1687
    invoke-static {}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unsupport resolution !!!"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    :goto_1
    return-void

    .line 1671
    .end local v1           #resolution:I
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 1674
    .restart local v1       #resolution:I
    :sswitch_0
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1677
    :sswitch_1
    const/16 v2, 0x4b

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1680
    :sswitch_2
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1683
    :sswitch_3
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1672
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x190 -> :sswitch_3
        0x1e0 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1648
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1750
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1751
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    .line 1753
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #calls: Lcom/htc/opensense/widget/HtcFilmstripView;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$600(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFilmstripView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1755
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFilmstripView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAdapterView;Z)V

    .line 1756
    :cond_1
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1699
    return-void
.end method


# virtual methods
.method public isFinish()Z
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1760
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    iget v0, v0, Lcom/htc/opensense/widget/HtcFilmstripView;->mItemCount:I

    if-nez v0, :cond_0

    .line 1761
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    .line 1835
    :goto_0
    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$702(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z

    .line 1768
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v8

    .line 1770
    .local v8, more:Z
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v9, v0, :cond_6

    .line 1771
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1772
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mEaseFunction:Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    .line 1774
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    sub-int v7, v0, v1

    .line 1775
    .local v7, diff:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    if-le v0, v1, :cond_4

    .line 1776
    if-nez v7, :cond_3

    .line 1777
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    .line 1795
    .end local v7           #diff:I
    :cond_1
    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    sub-int v6, v0, v1

    .line 1799
    .local v6, delta:I
    if-lez v6, :cond_7

    .line 1804
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$800(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$900(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1814
    :goto_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->trackMotionScroll(I)V

    .line 1815
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    .line 1817
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v9, v0, :cond_a

    .line 1818
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    if-lt v0, v1, :cond_8

    .line 1819
    :cond_2
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 1778
    .end local v6           #delta:I
    .restart local v7       #diff:I
    :cond_3
    if-gez v7, :cond_1

    .line 1779
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1783
    :cond_4
    if-nez v7, :cond_5

    .line 1784
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1785
    :cond_5
    if-lez v7, :cond_1

    .line 1786
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1790
    .end local v7           #diff:I
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1811
    .restart local v6       #delta:I
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1000(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1100(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 1820
    :cond_8
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1200(Lcom/htc/opensense/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1200(Lcom/htc/opensense/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1821
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1823
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 1829
    :cond_a
    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$700(Lcom/htc/opensense/widget/HtcFilmstripView;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1200(Lcom/htc/opensense/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1200(Lcom/htc/opensense/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1830
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1832
    :cond_b
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1724
    if-nez p1, :cond_0

    .line 1736
    :goto_0
    return-void

    .line 1726
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startCommon()V

    .line 1728
    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1729
    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    .line 1730
    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    .line 1732
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$500(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 1735
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1702
    if-nez p1, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1704
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startCommon()V

    .line 1706
    if-gez p1, :cond_2

    const/16 v1, 0x4e20

    .line 1707
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    .line 1709
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 1711
    iput-boolean v10, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    .line 1713
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v9

    .line 1715
    .local v9, duration:I
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v10, v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    .line 1717
    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1718
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    .end local v9           #duration:I
    :cond_2
    move v1, v2

    .line 1706
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1740
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    .line 1741
    return-void
.end method
