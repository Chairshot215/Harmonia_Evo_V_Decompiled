.class Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewGesture"
.end annotation


# static fields
.field private static final FLING_MODE_DEFAULT:I = 0x0

.field private static final FLING_MODE_DESTINATION:I = 0x1

.field private static final FLING_MODE_VELOCITY:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "HtcGridView2"

.field public static final MAX_VELOCITY:I = 0x7d0


# instance fields
.field private mBouncingDeltaX:I

.field private mBouncingDeltaY:I

.field public mBouncingDuration:I

.field private mBouncingEasingFunction:Lcom/htc/widget/EaseOutCubic;

.field private mCurrentX:I

.field private mCurrentY:I

.field private mEnableBouncing:Z

.field private mFlingDirection:I

.field private mFlingMode:I

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFling:Z

.field private mLastX:I

.field private mLastY:I

.field private mMaximumX:I

.field private mMaximumY:I

.field private mMinimuX:I

.field private mMinimuY:I

.field private mOutOfBoundary:Z

.field private mOutRatioX:F

.field private mOutRatioY:F

.field private mScroller:Lcom/htc/widget/HtcScroller;

.field private mVelocity:I

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingDirection:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastX:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastY:I

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingEasingFunction:Lcom/htc/widget/EaseOutCubic;

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutOfBoundary:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mEnableBouncing:Z

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaY:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaX:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutRatioX:F

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutRatioY:F

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDuration:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuX:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumX:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuY:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumY:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingMode:I

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mGestureDetector:Landroid/view/GestureDetector;

    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingDirection:I

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    new-instance v0, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v0}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingEasingFunction:Lcom/htc/widget/EaseOutCubic;

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastY:I

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastX:I

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->stopFling()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingDirection:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastX:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastY:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mEnableBouncing:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutOfBoundary:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingMode:I

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuX:I

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumX:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumY:I

    return v0
.end method

.method private stopFling()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2;->access$700(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v1

    #setter for: Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->access$602(Lcom/htc/opensense/widget/HtcGridView2;I)I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingMode:I

    if-ne v3, v0, :cond_2

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutOfBoundary:Z

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaY:I

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->isFullVisibleOnScreen(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getFirstFullVisiblePosition()I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2;->access$800(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v1

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2;->access$900(Lcom/htc/opensense/widget/HtcGridView2;I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public extendDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    return-void
.end method

.method fling_start()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, v5, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v6, v4, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2;->mIsByFrame:Z
    invoke-static {v5}, Lcom/htc/opensense/widget/HtcGridView2;->access$1000(Lcom/htc/opensense/widget/HtcGridView2;)Z

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mGesture:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->getDuration()I

    move-result v0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #setter for: Lcom/htc/opensense/widget/HtcGridView2;->mFrameCount:I
    invoke-static {v4, v6}, Lcom/htc/opensense/widget/HtcGridView2;->access$602(Lcom/htc/opensense/widget/HtcGridView2;I)I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v5

    sub-int v2, v4, v5

    const/16 v3, 0x384

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v4

    if-lt v3, v4, :cond_1

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBoundaryDuration(II)I
    invoke-static {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->access$1100(II)I

    move-result v0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2;->mDeviceFPS:I
    invoke-static {v5}, Lcom/htc/opensense/widget/HtcGridView2;->access$1300(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v5

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0x3e8

    #setter for: Lcom/htc/opensense/widget/HtcGridView2;->mTotalFrame:I
    invoke-static {v4, v5}, Lcom/htc/opensense/widget/HtcGridView2;->access$702(Lcom/htc/opensense/widget/HtcGridView2;I)I

    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/opensense/widget/HtcGridView2;I)V

    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v5

    iput v5, v4, Lcom/htc/opensense/widget/HtcGridView2;->mPreY:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v5}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v5

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I
    invoke-static {v4}, Lcom/htc/opensense/widget/HtcGridView2;->access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v4

    add-int/lit16 v1, v4, -0x4b0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v4

    if-gt v1, v4, :cond_1

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBoundaryDuration(II)I
    invoke-static {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2;->access$1100(II)I

    move-result v0

    goto :goto_0
.end method

.method fling_stop()V
    .locals 3

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->stopFling()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/opensense/widget/HtcGridView2;I)V

    :cond_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public getStartX()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v0

    return v0
.end method

.method public getStartY()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartY()I

    move-result v0

    return v0
.end method

.method public isFling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mEnableBouncing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutOfBoundary:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastX:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastY:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->startBouncingBack()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->resumePrefetch()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mScrollListener:Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/opensense/widget/HtcGridView2;I)V

    goto :goto_0
.end method

.method public setBoundary(IIII)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuX:I

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumX:I

    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuY:I

    iput p4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumY:I

    return-void
.end method

.method public setCurrentPosition(II)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I

    return-void
.end method

.method public setEnableBouncing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mEnableBouncing:Z

    return-void
.end method

.method public setOutOfBoundary(ZIIFF)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutOfBoundary:Z

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaX:I

    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaY:I

    iput p4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutRatioX:F

    iput p5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutRatioY:F

    return-void
.end method

.method startBouncingBack()V
    .locals 8

    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingMode:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastX:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastY:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaX:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDeltaY:I

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingDuration:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutRatioY:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mBouncingEasingFunction:Lcom/htc/widget/EaseOutCubic;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_start()V

    iput-boolean v7, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z

    return-void
.end method

.method public timePassed()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->timePassed()I

    move-result v0

    return v0
.end method
