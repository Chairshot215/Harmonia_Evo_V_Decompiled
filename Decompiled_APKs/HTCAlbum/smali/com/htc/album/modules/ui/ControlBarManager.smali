.class public Lcom/htc/album/modules/ui/ControlBarManager;
.super Ljava/lang/Object;
.source "ControlBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADEIN:I = 0x1

.field private static final ANIMATION_FADEOUT:I = 0x2

.field private static final ANIMATION_NONE:I = 0x0

.field public static final FOOTER_BAR:I = 0x2

.field public static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ControlBarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mCreateHeaderAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mEnableAnimation:Z

.field private mEnableInvalidateWhenShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

.field private final mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mHost:Lcom/htc/album/modules/ui/IControlBarHost;

.field private mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

.field private final mInvalidateControlBarsAction:Ljava/lang/Runnable;

.field private mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

.field private mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

.field private final mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mToggleControlBarsAction:Ljava/lang/Runnable;

.field private mUiThread:Ljava/lang/Thread;

.field private mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

.field private mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "host"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 44
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 45
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 47
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 54
    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 55
    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 57
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 59
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 61
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    .line 73
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 85
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 97
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    .line 109
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateHeaderAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 121
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 135
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 137
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 139
    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 142
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    .line 143
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v1, headerlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 148
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v0, footerlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doToggleControlBarsVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/modules/ui/ControlBarManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateHeaderBar(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/modules/ui/ControlBarManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    return-void
.end method

.method private createAnimation(I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "animationStyle"

    .prologue
    const-wide/16 v3, 0x12c

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, animation:Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_0

    .line 665
    :goto_0
    return-object v0

    .line 649
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 651
    .restart local v0       #animation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 652
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 657
    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 659
    .restart local v0       #animation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 660
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCreateFooterBar(IZ)V
    .locals 7
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 411
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 412
    .local v3, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-ne v5, p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-interface {v3}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 419
    .local v2, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v2, :cond_2

    .line 421
    invoke-interface {v3, p1}, Lcom/htc/album/modules/ui/IControlBarHost;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 422
    if-eqz v2, :cond_0

    .line 424
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V

    .line 426
    :cond_2
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->switchControlBar(I)V

    .line 427
    if-eqz p2, :cond_3

    .line 428
    invoke-interface {v3, v2}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    .line 431
    :cond_3
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 432
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 433
    :cond_4
    const/4 v4, 0x0

    .line 434
    .local v4, visibility:I
    const/4 v1, 0x1

    .line 435
    .local v1, animationStyle:I
    if-nez p2, :cond_5

    .line 436
    const/16 v4, 0x8

    .line 437
    const/4 v1, 0x0

    .line 439
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v5, v4, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    goto :goto_0
.end method

.method private doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .parameter "viewRoot"
    .parameter "contentView"

    .prologue
    const/4 v5, 0x2

    .line 365
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 366
    .local v0, host:Lcom/htc/album/modules/ui/IControlBarHost;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-interface {v0}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 379
    :cond_2
    new-instance v3, Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 380
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v3, v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V

    .line 381
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setDrawingCacheEnabled(Z)V

    .line 384
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->attachTo(Landroid/view/ViewGroup;)V

    .line 385
    if-eqz p2, :cond_3

    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    move-object v2, p2

    .line 387
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 388
    .local v2, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 389
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 391
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private doCreateHeaderBar(IZ)V
    .locals 8
    .parameter "id"
    .parameter "visible"

    .prologue
    const/4 v7, 0x1

    .line 276
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 277
    .local v4, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    const/4 v6, -0x1

    if-ne v6, p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-interface {v4}, Lcom/htc/album/modules/ui/IControlBarHost;->requestHeaderBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v6, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    .line 284
    .local v2, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-nez v2, :cond_2

    .line 286
    invoke-interface {v4, p1}, Lcom/htc/album/modules/ui/IControlBarHost;->onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_0

    .line 289
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v6, p1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V

    .line 290
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 291
    .local v3, headerBar:Landroid/view/ViewGroup;
    instance-of v6, v3, Lcom/htc/widget/HeaderBar;

    if-eqz v6, :cond_2

    .line 292
    check-cast v3, Lcom/htc/widget/HeaderBar;

    .end local v3           #headerBar:Landroid/view/ViewGroup;
    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    .line 295
    :cond_2
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    if-eqz v6, :cond_3

    .line 296
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    invoke-virtual {v2, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setHeaderControlListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    .line 297
    :cond_3
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v6, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->switchControlBar(I)V

    .line 298
    if-eqz p2, :cond_4

    .line 300
    invoke-interface {v4, v2}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V

    .line 301
    invoke-interface {v4}, Lcom/htc/album/modules/ui/IControlBarHost;->getHeaderTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 302
    invoke-interface {v4}, Lcom/htc/album/modules/ui/IControlBarHost;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setSubtitle(Ljava/lang/String;)V

    .line 305
    :cond_4
    iget-object v6, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 306
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v6

    if-ne v7, v6, :cond_0

    .line 307
    :cond_5
    const/4 v5, 0x0

    .line 308
    .local v5, visibility:I
    const/4 v1, 0x1

    .line 309
    .local v1, animationStyle:I
    if-nez p2, :cond_6

    .line 310
    const/16 v5, 0x8

    .line 311
    const/4 v1, 0x0

    .line 313
    :cond_6
    invoke-direct {p0, v7, v5, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    goto :goto_0
.end method

.method private doCreateHeaderContainer(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .parameter "viewRoot"
    .parameter "contentView"

    .prologue
    const/4 v5, 0x1

    .line 228
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 229
    .local v0, host:Lcom/htc/album/modules/ui/IControlBarHost;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-interface {v0}, Lcom/htc/album/modules/ui/IControlBarHost;->requestHeaderBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 245
    :cond_2
    new-instance v3, Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 246
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V

    .line 247
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v3, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setDrawingCacheEnabled(Z)V

    .line 250
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->attachTo(Landroid/view/ViewGroup;)V

    .line 251
    if-eqz p2, :cond_3

    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    move-object v2, p2

    .line 253
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 254
    .local v2, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 577
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    .line 578
    if-nez p1, :cond_0

    .line 579
    invoke-direct {p0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 581
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_3

    .line 585
    if-nez p2, :cond_2

    .line 586
    invoke-direct {p0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 588
    :cond_2
    invoke-direct {p0, v1, v2, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 590
    :cond_3
    return-void
.end method

.method private doInvalidateControlBars()V
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    .line 489
    .local v0, currentVisibility:Z
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedBarId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateHeaderBar(IZ)V

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedBarId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateFooterBar(IZ)V

    .line 497
    :cond_1
    return-void
.end method

.method private doInvalidateFooterBar(IZ)V
    .locals 3
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 446
    .local v1, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 453
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v0, :cond_2

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    goto :goto_0

    .line 457
    :cond_2
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0
.end method

.method private doInvalidateHeaderBar(IZ)V
    .locals 3
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 320
    .local v1, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->requestHeaderBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    .line 327
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-nez v0, :cond_2

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateHeaderBar(IZ)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V

    .line 332
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->getHeaderTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 333
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setSubtitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 536
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-direct {p0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 540
    :cond_0
    invoke-direct {p0, v1, v2, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_3

    .line 544
    if-nez p2, :cond_2

    .line 545
    invoke-direct {p0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 547
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 550
    :cond_3
    iget-boolean v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    if-ne v1, v0, :cond_4

    .line 551
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    .line 553
    :cond_4
    return-void
.end method

.method private doToggleControlBarsVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v0

    .line 614
    .local v0, visibility:I
    if-nez v0, :cond_1

    .line 616
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setControlBarVisibility(III)V
    .locals 1
    .parameter "style"
    .parameter "visibility"
    .parameter "animationStyle"

    .prologue
    .line 670
    invoke-direct {p0, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 671
    return-void
.end method

.method private setControlBarVisibility(IILandroid/view/animation/Animation;)V
    .locals 4
    .parameter "style"
    .parameter "visibility"
    .parameter "animation"

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, container:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 695
    sparse-switch p2, :sswitch_data_0

    .line 723
    :goto_1
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-ne v2, v3, :cond_1

    .line 724
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 727
    :cond_1
    return-void

    .line 680
    :pswitch_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    goto :goto_0

    .line 687
    :pswitch_1
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    .line 688
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    goto :goto_0

    .line 698
    :sswitch_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 703
    :sswitch_1
    if-eqz p3, :cond_2

    iget-boolean v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-nez v2, :cond_3

    .line 704
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 707
    :cond_3
    move-object v1, v0

    .line 708
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v2, p0, v1}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/View;)V

    invoke-virtual {p3, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 695
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public attach(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .parameter "root"
    .parameter "contentView"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateHeaderContainer(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method public attachHostBar(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "hostBar"

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    invoke-direct {v0, p1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    goto :goto_0
.end method

.method public createControlBar(II)V
    .locals 1
    .parameter "style"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-virtual {p0, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->createHeaderBar(IZ)V

    goto :goto_0

    .line 219
    :pswitch_1
    invoke-virtual {p0, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final createControlBars(II)V
    .locals 1
    .parameter "headerId"
    .parameter "footerId"

    .prologue
    .line 501
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 502
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 503
    return-void
.end method

.method public createFooterBar(IZ)V
    .locals 2
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setVisible(Z)V

    .line 397
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setId(I)V

    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public createHeaderBar(IZ)V
    .locals 2
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateHeaderAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setId(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateHeaderAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setVisible(Z)V

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateHeaderAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateHeaderAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 183
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->clearAnimation()V

    .line 187
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->detach()V

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->clearAnimation()V

    .line 192
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->detach()V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundHeaderParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 203
    return-void
.end method

.method public enableHeaderTransparentBackground(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 358
    .local v0, head:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HeaderBar;

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    .end local v0           #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 467
    .restart local v0       #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_0
    return-object v0
.end method

.method public final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    return-object v0
.end method

.method public final getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    .end local v0           #headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    .line 353
    .restart local v0       #headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    :cond_0
    return-object v0
.end method

.method public final getHeaderContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    return-object v0
.end method

.method public final hideControlBar(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 594
    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    .line 595
    return-void
.end method

.method public final hideControlBars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 558
    return-void
.end method

.method public final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 563
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    .line 567
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 569
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 570
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final invalidateControlBars()V
    .locals 2

    .prologue
    .line 472
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public isControlBarShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_2

    .line 627
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 627
    goto :goto_0

    .line 629
    :cond_2
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_3

    .line 630
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 632
    goto :goto_0
.end method

.method public setEnableAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 641
    return-void
.end method

.method public setEnableInvalidateWhenShow(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 637
    return-void
.end method

.method public setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 207
    return-void
.end method

.method public final showControlBar(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 507
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    .line 508
    return-void
.end method

.method public final showControlBars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 513
    return-void
.end method

.method public final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 518
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    .line 522
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 524
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 526
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final toggleControlBarsVisibility()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListHeaders:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 603
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
