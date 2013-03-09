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

    const/4 v2, 0x0

    const/16 v4, 0x3c

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    new-instance v2, Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-direct {v2, v3}, Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;-><init>(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mEaseFunction:Lcom/htc/opensense/widget/HtcFilmstripView$EaseLinear;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mStartTime:J

    new-instance v2, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getContext()Landroid/content/Context;

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

    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    invoke-static {}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unsupport resolution !!!"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :sswitch_0
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x4b

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    :sswitch_2
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    goto :goto_1

    :sswitch_3
    iput v4, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

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

.method static synthetic access$100(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;)Lcom/htc/widget/HtcScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #calls: Lcom/htc/opensense/widget/HtcFilmstripView;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$600(Lcom/htc/opensense/widget/HtcFilmstripView;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAdapterView;Z)V

    :cond_1
    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isFinish()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-nez v0, :cond_0

    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mShouldStopFling:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$702(Lcom/htc/opensense/widget/HtcFilmstripView;Z)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v8

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v9, v0, :cond_6

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

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

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    sub-int v7, v0, v1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    if-le v0, v1, :cond_4

    if-nez v7, :cond_3

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    sub-int v6, v0, v1

    if-lez v6, :cond_7

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$800(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$900(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, v6}, Lcom/htc/opensense/widget/HtcFilmstripView;->trackMotionScroll(I)V

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v9, v0, :cond_a

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    if-lt v0, v1, :cond_8

    :cond_2
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    :cond_3
    if-gez v7, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_5
    if-lez v7, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1000(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$1100(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

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

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

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

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startCommon()V

    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    #getter for: Lcom/htc/opensense/widget/HtcFilmstripView;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcFilmstripView;->access$500(Lcom/htc/opensense/widget/HtcFilmstripView;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 11

    const v6, 0x7fffffff

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->startCommon()V

    if-gez p1, :cond_2

    const/16 v1, 0x4e20

    :goto_1
    iput v1, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    iput-boolean v10, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v9

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mIsByFrame:Z

    if-ne v10, v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    iput v2, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mFrameCount:I

    iget v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mDeviceFPS:I

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->mTotalFrame:I

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/HtcFilmstripView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcFilmstripView$FlingRunnable;->endFling(Z)V

    return-void
.end method
