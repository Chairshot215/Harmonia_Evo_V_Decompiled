.class public Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
.super Landroid/widget/LinearLayout;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollHandler"
.end annotation


# static fields
.field private static mEaseFunction:Lcom/htc/opensense/widget/FullScreenView$EaseLinear;


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

.field private mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

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

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$EaseLinear;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$EaseLinear;-><init>(Lcom/htc/opensense/widget/FullScreenView$1;)V

    sput-object v0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mEaseFunction:Lcom/htc/opensense/widget/FullScreenView$EaseLinear;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mWidth:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsByFrame:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartTime:J

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->InitParam()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mWidth:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsByFrame:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartTime:J

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->InitParam()V

    return-void
.end method

.method private InitParam()V
    .locals 5

    const/16 v4, 0x32

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    :goto_1
    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :sswitch_0
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x41

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    :sswitch_2
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

    :sswitch_3
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    goto :goto_1

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

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsByFrame:Z

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    sget-object v0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mEaseFunction:Lcom/htc/opensense/widget/FullScreenView$EaseLinear;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/FullScreenView$EaseLinear;->currentResult(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    :goto_0
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    :cond_0
    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    :cond_1
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreY:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->postInvalidate()V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->abortAnimation()V

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDiff:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->abortAnimation()V

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    goto :goto_2
.end method

.method public getCurX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mOnDrawListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mOnDrawListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    sub-int v5, p4, p2

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v1, v7, [Landroid/view/View;

    const/4 v7, 0x0

    const v8, 0x20200d2

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const v8, 0x20200d3

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const v8, 0x20200d4

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v7

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    const/4 v7, 0x0

    add-int v8, v6, v5

    move/from16 v0, p5

    invoke-virtual {v4, v6, v7, v8, v0}, Landroid/view/View;->layout(IIII)V

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x20200b3

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v9

    add-int/2addr v9, v5

    move/from16 v0, p5

    invoke-virtual {v7, v5, v8, v9, v0}, Landroid/view/View;->layout(IIII)V

    const v7, 0x20200b7

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v5

    const/4 v9, 0x0

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v5

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v11

    add-int/2addr v10, v11

    move/from16 v0, p5

    invoke-virtual {v7, v8, v9, v10, v0}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    :cond_1
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->destroyDrawingCache()V

    return-void
.end method

.method public setFinalXY(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcScroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcScroller;->setFinalY(I)V

    return-void
.end method

.method public setLayoutCompletedCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFirstLayoutCompletedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnDrawCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mOnDrawListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFinishAnimationListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    return-void
.end method

.method public setOnStartListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mStartListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    invoke-interface {v0, p1}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onScrollStateChanged(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mState:I

    goto :goto_0
.end method

.method public startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreY:I

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    mul-int/2addr v0, p5

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsByFrame:Z

    if-ne v0, v1, :cond_0

    const/16 p5, 0x1388

    :cond_0
    if-ne p3, p1, :cond_1

    if-ne p4, p2, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_0
    return-void

    :cond_1
    sub-int v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_3

    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_3

    invoke-virtual {p0, p3, p4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

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

    const/4 v9, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollY()I

    move-result v2

    iput v7, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFrameCount:I

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentX:I

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mCurrentY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mPreY:I

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mWidth:I

    if-gtz v0, :cond_0

    const v0, 0x20200d3

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mWidth:I

    :cond_0
    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mWidth:I

    if-lez v6, :cond_1

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$5900()I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/2addr v0, v8

    div-int v5, v0, v6

    :goto_0
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mDeviceFPS:I

    mul-int/2addr v0, v5

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mTotalFrame:I

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_1
    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsByFrame:Z

    if-ne v0, v8, :cond_3

    const/16 v5, 0x1388

    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v9, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v9, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mFinishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_1

    :cond_5
    iput-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mIsStart:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->mScrollerHelper:Lcom/htc/widget/HtcScroller;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->invalidate()V

    goto :goto_2
.end method
