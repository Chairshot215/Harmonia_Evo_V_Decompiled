.class Lcom/htc/widget/DecorFlow$FlingRunnable;
.super Ljava/lang/Object;
.source "DecorFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DecorFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field static final MAX_VELOCITY:I = 0xe10


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/widget/DecorFlow;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DecorFlow;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/widget/DecorFlow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/DecorFlow$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/DecorFlow$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #calls: Lcom/htc/widget/DecorFlow;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/widget/DecorFlow;->access$1000(Lcom/htc/widget/DecorFlow;)V

    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v0, p0}, Lcom/htc/widget/DecorFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public calculateNewVelocity(I)F
    .locals 12

    const/4 v8, 0x1

    const/high16 v11, 0x4000

    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #calls: Lcom/htc/widget/DecorFlow;->scrollIntoSlotsAmounts()I
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$400(Lcom/htc/widget/DecorFlow;)I

    move-result v5

    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v9}, Lcom/htc/widget/DecorFlow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x4320

    mul-float v4, v9, v10

    const v9, 0x43c10b3d

    mul-float/2addr v9, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v10

    mul-float v0, v9, v10

    int-to-float v7, p1

    mul-float v9, v7, v7

    mul-float v10, v11, v0

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gez p1, :cond_2

    move v1, v8

    :goto_0
    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mGalleryMode:Z
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$500(Lcom/htc/widget/DecorFlow;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mAlbumWidth:I
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$600(Lcom/htc/widget/DecorFlow;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mSpacing:I
    invoke-static {v10}, Lcom/htc/widget/DecorFlow;->access$700(Lcom/htc/widget/DecorFlow;)I

    move-result v10

    add-int/2addr v9, v10

    rem-int v2, v6, v9

    :goto_1
    if-eqz v2, :cond_0

    sub-int/2addr v6, v2

    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mGalleryMode:Z
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$500(Lcom/htc/widget/DecorFlow;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mAlbumWidth:I
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$600(Lcom/htc/widget/DecorFlow;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mSpacing:I
    invoke-static {v10}, Lcom/htc/widget/DecorFlow;->access$700(Lcom/htc/widget/DecorFlow;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    :cond_0
    :goto_2
    if-nez v1, :cond_5

    sub-int/2addr v6, v5

    :goto_3
    int-to-float v9, v6

    mul-float v10, v11, v0

    mul-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v3, v9

    if-ne v1, v8, :cond_1

    const/4 v8, 0x0

    sub-float v3, v8, v3

    :cond_1
    return v3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mAlbumWidth:I
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$600(Lcom/htc/widget/DecorFlow;)I

    move-result v9

    rem-int v2, v6, v9

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mAlbumWidth:I
    invoke-static {v9}, Lcom/htc/widget/DecorFlow;->access$600(Lcom/htc/widget/DecorFlow;)I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_2

    :cond_5
    add-int/2addr v6, v5

    goto :goto_3
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget v5, v5, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    invoke-direct {p0, v7}, Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    const/4 v6, 0x0

    #setter for: Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z
    invoke-static {v5, v6}, Lcom/htc/widget/DecorFlow;->access$1102(Lcom/htc/widget/DecorFlow;Z)Z

    iget-object v3, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget-object v6, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget v6, v6, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/widget/DecorFlow;->access$1202(Lcom/htc/widget/DecorFlow;I)I

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v5}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/DecorFlow;->access$1300(Lcom/htc/widget/DecorFlow;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/DecorFlow;->access$1400(Lcom/htc/widget/DecorFlow;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v5, v0}, Lcom/htc/widget/DecorFlow;->trackMotionScroll(I)V

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/widget/DecorFlow;->access$1100(Lcom/htc/widget/DecorFlow;)Z

    move-result v5

    if-nez v5, :cond_2

    iput v4, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mLastFlingX:I

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v5, p0}, Lcom/htc/widget/DecorFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v5}, Lcom/htc/widget/DecorFlow;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget-object v6, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget v6, v6, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    #setter for: Lcom/htc/widget/DecorFlow;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/widget/DecorFlow;->access$1202(Lcom/htc/widget/DecorFlow;I)I

    iget-object v5, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v5}, Lcom/htc/widget/DecorFlow;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/DecorFlow;->access$1500(Lcom/htc/widget/DecorFlow;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/DecorFlow;->access$1600(Lcom/htc/widget/DecorFlow;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v7}, Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startCommon()V

    iput v1, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    #getter for: Lcom/htc/widget/DecorFlow;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/DecorFlow;->access$900(Lcom/htc/widget/DecorFlow;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v0, p0}, Lcom/htc/widget/DecorFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9

    const v6, 0x7fffffff

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget v0, v0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    iget v0, v0, Lcom/htc/widget/DecorFlow;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    int-to-float v0, p1

    const/high16 v3, 0x3fc0

    mul-float/2addr v0, v3

    float-to-int p1, v0

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    return-void

    :cond_1
    int-to-float v0, p1

    const v3, 0x3fe66666

    mul-float/2addr v0, v3

    float-to-int p1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0xe10

    if-le p1, v0, :cond_4

    const/16 p1, 0xe10

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->calculateNewVelocity(I)F

    move-result v0

    float-to-int p1, v0

    invoke-direct {p0}, Lcom/htc/widget/DecorFlow$FlingRunnable;->startCommon()V

    if-gez p1, :cond_5

    move v1, v6

    :goto_3
    iput v1, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    const/4 v2, 0x1

    #calls: Lcom/htc/widget/DecorFlow;->setScrollStateChanged(I)V
    invoke-static {v0, v2}, Lcom/htc/widget/DecorFlow;->access$800(Lcom/htc/widget/DecorFlow;I)V

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v0, p0}, Lcom/htc/widget/DecorFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    const/16 v0, -0xe10

    if-ge p1, v0, :cond_3

    const/16 p1, -0xe10

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$FlingRunnable;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v0, p0}, Lcom/htc/widget/DecorFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlow$FlingRunnable;->endFling(Z)V

    return-void
.end method
