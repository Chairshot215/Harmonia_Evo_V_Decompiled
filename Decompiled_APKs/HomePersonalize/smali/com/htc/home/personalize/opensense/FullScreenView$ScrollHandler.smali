.class public Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
.super Landroid/widget/LinearLayout;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollHandler"
.end annotation


# static fields
.field private static mEaseFunction:Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private mDeviceFPS:I

.field private mDiff:I

.field private mFinishListener:Ljava/lang/Runnable;

.field private mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

.field private mFrameCount:I

.field private mIsByFrame:Z

.field private mIsStart:Z

.field private mOnDrawListener:Ljava/lang/Runnable;

.field private mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

.field private mPreX:I

.field private mPreY:I

.field private mScrollerHelper:Lcom/htc/widget/HtcScroller;

.field private mStartListener:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mState:I

.field private mTotalFrame:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2796
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    sput-object v0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mEaseFunction:Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2802
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    .line 2789
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mWidth:I

    .line 2790
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    .line 2791
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreY:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    .line 2792
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    .line 2794
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    .line 2795
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    .line 2797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsByFrame:Z

    .line 2798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartTime:J

    .line 2799
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    .line 2804
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    .line 2806
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->InitParam()V

    .line 2807
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 2810
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    .line 2789
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mWidth:I

    .line 2790
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    .line 2791
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreY:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    .line 2792
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    .line 2794
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    .line 2795
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    .line 2797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsByFrame:Z

    .line 2798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartTime:J

    .line 2799
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    .line 2811
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    .line 2812
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->InitParam()V

    .line 2813
    return-void
.end method

.method private InitParam()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 2816
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2817
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2818
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2819
    .local v1, resolution:I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 2833
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    .line 2837
    :goto_1
    return-void

    .line 2818
    .end local v1           #resolution:I
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 2821
    .restart local v1       #resolution:I
    :sswitch_0
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    .line 2824
    :sswitch_1
    const/16 v2, 0x41

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    .line 2827
    :sswitch_2
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    .line 2830
    :sswitch_3
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    .line 2819
    nop

    :sswitch_data_0
    .sparse-switch
        0x140 -> :sswitch_0
        0x190 -> :sswitch_3
        0x1e0 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    .line 2850
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2851
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2852
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2955
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2956
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsByFrame:Z

    if-ne v0, v1, :cond_3

    .line 2958
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    .line 2959
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mEaseFunction:Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    .line 2966
    :goto_0
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    .line 2970
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    if-le v0, v1, :cond_5

    .line 2971
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    if-nez v0, :cond_4

    .line 2972
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    .line 2985
    :cond_0
    :goto_1
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    if-lt v0, v1, :cond_1

    .line 2987
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    .line 2988
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    .line 2991
    :cond_1
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollTo(II)V

    .line 2993
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    .line 2994
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreY:I

    .line 2995
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->postInvalidate()V

    .line 2997
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    if-ne v0, v1, :cond_7

    .line 2998
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->abortAnimation()V

    .line 2999
    iput v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    .line 3005
    :cond_2
    :goto_2
    return-void

    .line 2962
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    .line 2963
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    goto :goto_0

    .line 2973
    :cond_4
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    if-gez v0, :cond_0

    .line 2974
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    goto :goto_1

    .line 2978
    :cond_5
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    if-nez v0, :cond_6

    .line 2979
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    goto :goto_1

    .line 2980
    :cond_6
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDiff:I

    if-lez v0, :cond_0

    .line 2981
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    goto :goto_1

    .line 3000
    :cond_7
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    if-lt v0, v1, :cond_2

    .line 3001
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->abortAnimation()V

    .line 3002
    iput v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    goto :goto_2
.end method

.method public getCurX()I
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurY()I
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 2879
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3050
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    if-nez v0, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 3052
    :cond_1
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 3054
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3055
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 3056
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3070
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mOnDrawListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mOnDrawListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3058
    :cond_4
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3060
    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    .line 3061
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 3063
    :cond_5
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3065
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    .line 3066
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 3067
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3009
    sub-int v5, p4, p2

    .line 3010
    .local v5, width:I
    const/4 v6, 0x0

    .line 3011
    .local v6, x:I
    const/4 v7, 0x3

    new-array v1, v7, [Landroid/view/View;

    const/4 v7, 0x0

    const v8, 0x7f0b0006

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const v8, 0x7f0b0008

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const v8, 0x7f0b000a

    invoke-virtual {p0, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v7

    .local v1, arr$:[Landroid/view/View;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 3015
    .local v4, v:Landroid/view/View;
    const/4 v7, 0x0

    add-int v8, v6, v5

    move/from16 v0, p5

    invoke-virtual {v4, v6, v7, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 3016
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 3011
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3019
    .end local v4           #v:Landroid/view/View;
    :cond_0
    const v7, 0x7f0b0007

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v9

    add-int/2addr v9, v5

    move/from16 v0, p5

    invoke-virtual {v7, v5, v8, v9, v0}, Landroid/view/View;->layout(IIII)V

    .line 3020
    const v7, 0x7f0b0009

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v5

    const/4 v9, 0x0

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v5

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v11

    add-int/2addr v10, v11

    move/from16 v0, p5

    invoke-virtual {v7, v8, v9, v10, v0}, Landroid/view/View;->layout(IIII)V

    .line 3023
    if-eqz p1, :cond_1

    .line 3025
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_1

    .line 3026
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 3029
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3074
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3075
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    .line 3076
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    if-eqz v0, :cond_1

    .line 3077
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    .line 3079
    :cond_1
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    .line 3080
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    .line 3081
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->destroyDrawingCache()V

    .line 3082
    return-void
.end method

.method public setFinalXY(II)V
    .locals 1
    .parameter "newX"
    .parameter "newY"

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcScroller;->setFinalX(I)V

    .line 2950
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcScroller;->setFinalY(I)V

    .line 2951
    return-void
.end method

.method public setLayoutCompletedCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 2862
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    .line 2863
    return-void
.end method

.method public setOnDrawCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 2866
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mOnDrawListener:Ljava/lang/Runnable;

    .line 2867
    return-void
.end method

.method public setOnFinishAnimationListener(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3032
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    .line 3033
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3040
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    .line 3041
    return-void
.end method

.method public setOnStartListener(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3036
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    .line 3037
    return-void
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2870
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    if-eq v0, p1, :cond_1

    .line 2871
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    .line 2872
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    invoke-interface {v0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onScrollStateChanged(I)V

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2875
    :cond_1
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mState:I

    goto :goto_0
.end method

.method public startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V
    .locals 7
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"
    .parameter "duration"
    .parameter "physics"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2884
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    .line 2885
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    .line 2886
    iput p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    iput p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreY:I

    .line 2887
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    mul-int/2addr v0, p5

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    .line 2888
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsByFrame:Z

    if-ne v0, v1, :cond_0

    .line 2889
    const/16 p5, 0x1388

    .line 2891
    :cond_0
    if-ne p3, p1, :cond_1

    if-ne p4, p2, :cond_1

    .line 2904
    :goto_0
    return-void

    .line 2893
    :cond_1
    sub-int v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_3

    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 2895
    invoke-virtual {p0, p3, p4}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollTo(II)V

    .line 2896
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2903
    :cond_2
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_0

    .line 2900
    :cond_3
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    .line 2901
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    move v1, p1

    move v2, p2

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    goto :goto_1
.end method

.method public startScrollTo(II)V
    .locals 10
    .parameter "newX"
    .parameter "newY"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 2907
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v1

    .line 2908
    .local v1, oldX:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollY()I

    move-result v2

    .line 2910
    .local v2, oldY:I
    iput v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFrameCount:I

    .line 2911
    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreX:I

    .line 2912
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mCurrentY:I

    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mPreY:I

    .line 2914
    sub-int v3, p1, v1

    .line 2915
    .local v3, deltaX:I
    sub-int v4, p2, v2

    .line 2917
    .local v4, deltaY:I
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mWidth:I

    if-gtz v0, :cond_0

    .line 2918
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mWidth:I

    .line 2920
    :cond_0
    iget v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mWidth:I

    .line 2923
    .local v6, viewWidth:I
    if-lez v6, :cond_1

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5400()I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/2addr v0, v8

    div-int v5, v0, v6

    .line 2924
    .local v5, duration:I
    :goto_0
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mDeviceFPS:I

    mul-int/2addr v0, v5

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mTotalFrame:I

    .line 2926
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 2943
    :goto_1
    return-void

    .end local v5           #duration:I
    :cond_1
    move v5, v7

    .line 2923
    goto :goto_0

    .line 2928
    .restart local v5       #duration:I
    :cond_2
    const/4 v0, 0x1

    iget-boolean v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsByFrame:Z

    if-ne v0, v8, :cond_3

    .line 2929
    const/16 v5, 0x1388

    .line 2931
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v9, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v9, :cond_5

    .line 2933
    invoke-virtual {p0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollTo(II)V

    .line 2934
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2942
    :cond_4
    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_1

    .line 2938
    :cond_5
    iput-boolean v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mIsStart:Z

    .line 2939
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 2940
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->invalidate()V

    goto :goto_2
.end method
