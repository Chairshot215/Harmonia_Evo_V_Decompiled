.class Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;
.super Ljava/lang/Object;
.source "HtcFilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widget/HtcFilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private albumWidth:I

.field private mCurrentX:I

.field private mDeviceFPS:I

.field private mEaseFunction:Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;

.field private mFrameCount:I

.field private mIsByFrame:Z

.field private mLastFlingX:I

.field private mScroller:Lcom/htc/widget/HtcScroller;

.field private mStartTime:J

.field private mTotalFrame:I

.field final synthetic this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3c

    .line 1703
    iput-object p1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    .line 1697
    iput v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    .line 1698
    iput v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    .line 1699
    new-instance v2, Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;

    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-direct {v2, v3}, Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;-><init>(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V

    iput-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mEaseFunction:Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;

    .line 1700
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    .line 1701
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mStartTime:J

    .line 1741
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->albumWidth:I

    .line 1704
    new-instance v2, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 1706
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1707
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1708
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1709
    .local v1, resolution:I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 1726
    iput v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    .line 1727
    invoke-static {}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unsupport resolution !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :goto_1
    return-void

    .line 1708
    .end local v1           #resolution:I
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 1711
    .restart local v1       #resolution:I
    :sswitch_0
    iput v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1714
    :sswitch_1
    const/16 v2, 0x4b

    iput v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1717
    :sswitch_2
    iput v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1720
    :sswitch_3
    iput v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1723
    :sswitch_4
    iput v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    .line 1709
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x190 -> :sswitch_4
        0x1e0 -> :sswitch_1
        0x320 -> :sswitch_2
        0x3c0 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1685
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1849
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1850
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    .line 1852
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #calls: Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$800(Lcom/htc/home/personalize/widget/HtcFilmstripView;)V

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    iget-object v0, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1854
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    iget-object v0, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-interface {v0, v1, p1}, Lcom/htc/home/personalize/widget/AlbumAdapterView$OnItemSelectedListener;->onScrollStateChanged(Lcom/htc/home/personalize/widget/AlbumAdapterView;Z)V

    .line 1855
    :cond_1
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1739
    return-void
.end method


# virtual methods
.method public calculateNewVelocity(I)F
    .locals 12
    .parameter "initialVelocity"

    .prologue
    const/4 v8, 0x1

    const/high16 v11, 0x4000

    .line 1743
    iget-object v9, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #calls: Lcom/htc/home/personalize/widget/HtcFilmstripView;->scrollIntoSlotsAmounts()I
    invoke-static {v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$500(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I

    move-result v5

    .line 1744
    .local v5, scrollAmount:I
    iget-object v9, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x4320

    mul-float v4, v9, v10

    .line 1745
    .local v4, ppi:F
    const v9, 0x43c10b3d

    mul-float/2addr v9, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v10

    mul-float v0, v9, v10

    .line 1750
    .local v0, deceleration:F
    int-to-float v7, p1

    .line 1751
    .local v7, velocity:F
    mul-float v9, v7, v7

    mul-float v10, v11, v0

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1752
    .local v6, totalDistance:I
    if-gez p1, :cond_2

    move v1, v8

    .line 1755
    .local v1, isDistanceNegative:Z
    :goto_0
    const/4 v9, -0x1

    iget v10, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->albumWidth:I

    if-ne v9, v10, :cond_0

    .line 1759
    iget-object v9, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$600(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->albumWidth:I

    .line 1763
    :cond_0
    iget v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->albumWidth:I

    .line 1765
    .local v2, mAlbumWidth:I
    add-int v9, v6, v2

    add-int/lit8 v9, v9, -0x1

    div-int v6, v9, v2

    .line 1766
    mul-int/2addr v6, v2

    .line 1777
    if-nez v1, :cond_3

    .line 1778
    sub-int/2addr v6, v5

    .line 1783
    :goto_1
    int-to-float v9, v6

    mul-float v10, v11, v0

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v3, v9

    .line 1784
    .local v3, newVelocity:F
    if-ne v1, v8, :cond_1

    const/4 v8, 0x0

    sub-float v3, v8, v3

    .line 1787
    :cond_1
    return v3

    .line 1752
    .end local v1           #isDistanceNegative:Z
    .end local v2           #mAlbumWidth:I
    .end local v3           #newVelocity:F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1780
    .restart local v1       #isDistanceNegative:Z
    .restart local v2       #mAlbumWidth:I
    :cond_3
    add-int/2addr v6, v5

    goto :goto_1
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1859
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    iget v0, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-nez v0, :cond_0

    .line 1860
    invoke-direct {p0, v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    .line 1934
    :goto_0
    return-void

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldStopFling:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$902(Lcom/htc/home/personalize/widget/HtcFilmstripView;Z)Z

    .line 1867
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v8

    .line 1869
    .local v8, more:Z
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v9, v0, :cond_6

    .line 1870
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1871
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mEaseFunction:Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/widget/HtcFilmstripView$EaseLinear;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    .line 1873
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    sub-int v7, v0, v1

    .line 1874
    .local v7, diff:I
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    if-le v0, v1, :cond_4

    .line 1875
    if-nez v7, :cond_3

    .line 1876
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    .line 1894
    .end local v7           #diff:I
    :cond_1
    :goto_1
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    sub-int v6, v0, v1

    .line 1898
    .local v6, delta:I
    if-lez v6, :cond_7

    .line 1903
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$1000(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$1100(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1913
    :goto_2
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, v6}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->trackMotionScroll(I)V

    .line 1914
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    .line 1916
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v9, v0, :cond_a

    .line 1917
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    iget v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    if-lt v0, v1, :cond_8

    .line 1918
    :cond_2
    invoke-direct {p0, v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 1877
    .end local v6           #delta:I
    .restart local v7       #diff:I
    :cond_3
    if-gez v7, :cond_1

    .line 1878
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1882
    :cond_4
    if-nez v7, :cond_5

    .line 1883
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1884
    :cond_5
    if-lez v7, :cond_1

    .line 1885
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1889
    .end local v7           #diff:I
    :cond_6
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    .line 1910
    .restart local v6       #delta:I
    :cond_7
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$1200(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$1300(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 1919
    :cond_8
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$600(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$600(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1920
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1922
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 1928
    :cond_a
    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mShouldStopFling:Z
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$900(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$600(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mContext:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$600(Lcom/htc/home/personalize/widget/HtcFilmstripView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1929
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1931
    :cond_b
    invoke-direct {p0, v9}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1823
    if-nez p1, :cond_0

    .line 1835
    :goto_0
    return-void

    .line 1825
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startCommon()V

    .line 1827
    iput v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1828
    iput v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    .line 1829
    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    .line 1831
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    #getter for: Lcom/htc/home/personalize/widget/HtcFilmstripView;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->access$700(Lcom/htc/home/personalize/widget/HtcFilmstripView;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 1834
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1791
    if-nez p1, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1801
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->calculateNewVelocity(I)F

    move-result v0

    float-to-int p1, v0

    .line 1803
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->startCommon()V

    .line 1805
    if-gez p1, :cond_2

    const/16 v1, 0x4e20

    .line 1806
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    .line 1808
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 1810
    iput-boolean v10, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    .line 1812
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v9

    .line 1814
    .local v9, duration:I
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v10, v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    .line 1816
    iput v2, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    .line 1817
    iget v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    .end local v9           #duration:I
    :cond_2
    move v1, v2

    .line 1805
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/home/personalize/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1839
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    .line 1840
    return-void
.end method
