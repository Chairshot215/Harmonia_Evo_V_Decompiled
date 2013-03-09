.class public Lcom/htc/widget/DeckControl;
.super Lcom/htc/sunny/SPresentation;
.source "DeckControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DeckControl$DrawThread;,
        Lcom/htc/widget/DeckControl$DCAdapterListener;,
        Lcom/htc/widget/DeckControl$OnItemSelectedListener;,
        Lcom/htc/widget/DeckControl$OnItemClickListener;,
        Lcom/htc/widget/DeckControl$OnFinishedMovementListener;,
        Lcom/htc/widget/DeckControl$OnMovementListener;,
        Lcom/htc/widget/DeckControl$InternalPresentationListener;,
        Lcom/htc/widget/DeckControl$GlideHandlerCallback;
    }
.end annotation


# static fields
.field protected static final ON_FINISHEDMOVEMENT:I = 0x2

.field protected static final ON_FLINGEND:I = 0x5

.field protected static final ON_FLINGSTART:I = 0x4

.field protected static final ON_ITEMCLICK:I = 0x0

.field protected static final ON_ITEMSELECTED:I = 0x1

.field protected static final ON_MOVEMENT:I = 0x3

.field protected static final ON_SCROLLEND:I = 0x7

.field protected static final ON_SCROLLSTART:I = 0x6


# instance fields
.field private final DEBUGTAG:Ljava/lang/String;

.field private bglistener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

.field private bgsbitmap:Lcom/htc/sunny/SBitmap;

.field private final debugflag:Z

.field private final mCacheSize:I

.field mClickListener:Lcom/htc/widget/DeckControl$OnItemClickListener;

.field private mConfig:Landroid/graphics/Bitmap$Config;

.field private mDefaultView:Landroid/view/View;

.field mFinMoveListener:Lcom/htc/widget/DeckControl$OnFinishedMovementListener;

.field private mHandler:Landroid/os/Handler;

.field private mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

.field private mIsDefaultLayout:Z

.field mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

.field private mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

.field mSelectedListener:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

.field private mfFlingAccelerate:F

.field private mfSpacing:F

.field private mfYOffset:F

.field private mnItemHeight:I

.field private mnItemWidth:I

.field private surfaceview:Lcom/htc/widget/DeckControlView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/DeckControlView;I)V
    .locals 4
    .parameter "context"
    .parameter "surfaceView"
    .parameter "nCacheSize"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 33
    const-string v0, "GlideModeGallery"

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->DEBUGTAG:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/htc/widget/DeckControl;->debugflag:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/widget/DeckControl;->mIsDefaultLayout:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    .line 44
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/widget/DeckControl;->mfFlingAccelerate:F

    .line 48
    iput v2, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    .line 49
    iput v2, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    .line 603
    new-instance v0, Lcom/htc/widget/DeckControl$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/DeckControl$3;-><init>(Lcom/htc/widget/DeckControl;)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->bglistener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 73
    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->enableHitFeedback(Z)V

    .line 74
    const/high16 v0, 0x3f00

    invoke-super {p0, v0}, Lcom/htc/sunny/SPresentation;->enlargeSensorArea(F)V

    .line 76
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mContext:Landroid/content/Context;

    .line 77
    iput p3, p0, Lcom/htc/widget/DeckControl;->mCacheSize:I

    .line 78
    iput-object p2, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    .line 79
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/htc/widget/DeckControl$GlideHandlerCallback;

    invoke-direct {v1, p0, v3}, Lcom/htc/widget/DeckControl$GlideHandlerCallback;-><init>(Lcom/htc/widget/DeckControl;Lcom/htc/widget/DeckControl$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->bglistener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setOnGenerateBackgroundListener(Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;)V

    .line 84
    :cond_0
    new-instance v0, Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    .line 85
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    new-instance v1, Lcom/htc/widget/DeckControl$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DeckControl$1;-><init>(Lcom/htc/widget/DeckControl;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V

    .line 102
    new-instance v0, Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/DeckControl$InternalPresentationListener;-><init>(Lcom/htc/widget/DeckControl;Lcom/htc/widget/DeckControl$1;)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    .line 103
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-super {p0, v0}, Lcom/htc/sunny/SPresentation;->setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    .line 104
    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DeckControl;)Lcom/htc/sunny/SBitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/widget/DeckControl;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/widget/DeckControl;)Lcom/htc/widget/DeckControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;->setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    .line 476
    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    .line 477
    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    .line 479
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlSPAdapter;->destroy()V

    .line 482
    iput-object v1, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 488
    iput-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    .line 490
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;->setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    .line 495
    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    .line 496
    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    .line 498
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlSPAdapter;->destroy()V

    .line 501
    iput-object v1, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 507
    iput-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    .line 509
    :cond_1
    return-void
.end method

.method public finishAnimation(ILcom/htc/sunny/SAnimationController$AnimationListener;)V
    .locals 12
    .parameter "duration"
    .parameter "anlistener"

    .prologue
    .line 699
    const/4 v5, 0x0

    .line 700
    .local v5, translatestartl:Lcom/htc/sunny/Vector3F;
    const/4 v6, 0x0

    .line 701
    .local v6, translatestartr:Lcom/htc/sunny/Vector3F;
    const/4 v7, 0x0

    .line 702
    .local v7, translatestopl:Lcom/htc/sunny/Vector3F;
    const/4 v8, 0x0

    .line 704
    .local v8, translatestopr:Lcom/htc/sunny/Vector3F;
    const/4 v1, 0x0

    .line 705
    .local v1, controller:Lcom/htc/sunny/SAnimationController;
    const/4 v2, 0x0

    .line 706
    .local v2, controllerl:Lcom/htc/sunny/SAnimationController;
    const/4 v3, 0x0

    .line 708
    .local v3, controllerr:Lcom/htc/sunny/SAnimationController;
    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v9, :cond_0

    if-gez p1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget v9, p0, Lcom/htc/widget/DeckControl;->mPresentationState:I

    const/16 v10, 0x12

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/htc/widget/DeckControl;->mPresentationState:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 714
    :cond_2
    new-instance v7, Lcom/htc/sunny/Vector3F;

    .end local v7           #translatestopl:Lcom/htc/sunny/Vector3F;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v9, v10, v11}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    .line 715
    .restart local v7       #translatestopl:Lcom/htc/sunny/Vector3F;
    new-instance v8, Lcom/htc/sunny/Vector3F;

    .end local v8           #translatestopr:Lcom/htc/sunny/Vector3F;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    .line 716
    .restart local v8       #translatestopr:Lcom/htc/sunny/Vector3F;
    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v9}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerCount()I

    move-result v9

    shr-int/lit8 v0, v9, 0x1

    .line 718
    .local v0, cntcount:I
    if-ltz v0, :cond_0

    .line 721
    new-instance v1, Lcom/htc/sunny/SAnimationController;

    .end local v1           #controller:Lcom/htc/sunny/SAnimationController;
    invoke-direct {v1}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 722
    .restart local v1       #controller:Lcom/htc/sunny/SAnimationController;
    new-instance v9, Lcom/htc/widget/DeckControl$4;

    invoke-direct {v9, p0, p2}, Lcom/htc/widget/DeckControl$4;-><init>(Lcom/htc/widget/DeckControl;Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    invoke-virtual {v1, v9}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 737
    int-to-long v9, p1

    invoke-virtual {v1, v9, v10}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/htc/widget/DeckControl;->getContainerView(I)Lcom/htc/sunny/SView;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/sunny/SView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 740
    move v4, v0

    .local v4, loop:I
    :goto_1
    if-lez v4, :cond_3

    .line 742
    new-instance v2, Lcom/htc/sunny/SAnimationController;

    .end local v2           #controllerl:Lcom/htc/sunny/SAnimationController;
    invoke-direct {v2}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 743
    .restart local v2       #controllerl:Lcom/htc/sunny/SAnimationController;
    new-instance v3, Lcom/htc/sunny/SAnimationController;

    .end local v3           #controllerr:Lcom/htc/sunny/SAnimationController;
    invoke-direct {v3}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 745
    .restart local v3       #controllerr:Lcom/htc/sunny/SAnimationController;
    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    sub-int v10, v0, v4

    invoke-virtual {v9, v10}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v9

    iget-object v5, v9, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 746
    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    add-int v10, v0, v4

    invoke-virtual {v9, v10}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v9

    iget-object v6, v9, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 748
    iget v9, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    iput v9, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 749
    iget v9, v6, Lcom/htc/sunny/Vector3F;->mZ:F

    iput v9, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 750
    iget v9, v5, Lcom/htc/sunny/Vector3F;->mY:F

    iput v9, v7, Lcom/htc/sunny/Vector3F;->mY:F

    .line 751
    iget v9, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iput v9, v8, Lcom/htc/sunny/Vector3F;->mY:F

    .line 752
    const/4 v9, 0x0

    iput v9, v7, Lcom/htc/sunny/Vector3F;->mX:F

    .line 753
    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/sunny/Vector3F;->mX:F

    .line 755
    invoke-virtual {v2, v5, v7}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 756
    invoke-virtual {v3, v6, v8}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 757
    sget-object v9, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v2, v9}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 758
    sget-object v9, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v3, v9}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 759
    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 760
    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 761
    int-to-long v9, p1

    invoke-virtual {v2, v9, v10}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 762
    int-to-long v9, p1

    invoke-virtual {v3, v9, v10}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 764
    sub-int v9, v0, v4

    invoke-virtual {p0, v9}, Lcom/htc/widget/DeckControl;->getContainerView(I)Lcom/htc/sunny/SView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/sunny/SView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 765
    add-int v9, v0, v4

    invoke-virtual {p0, v9}, Lcom/htc/widget/DeckControl;->getContainerView(I)Lcom/htc/sunny/SView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/htc/sunny/SView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 740
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 769
    :cond_3
    const-string v9, "GlideModeGallery"

    const-string v10, "GlideMode:finishAnimation()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "GlideModeGallery"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0}, Lcom/htc/sunny/SPresentation;->notifyDataSetChanged()V

    .line 157
    return-void
.end method

.method protected notifySelectionChange(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->notifySelectionChange(I)V

    .line 179
    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 188
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->notifyStateChange(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 2
    .parameter "nPos"

    .prologue
    .line 164
    const-string v0, "GlideModeGallery"

    const-string v1, "notifyUpdateItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0, p1}, Lcom/htc/sunny/SPresentation;->notifyUpdateItem(I)V

    .line 166
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 285
    iget v0, p0, Lcom/htc/widget/DeckControl;->mfFlingAccelerate:F

    mul-float/2addr v0, p3

    invoke-super {p0, p1, p2, v0, p4}, Lcom/htc/sunny/SPresentation;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 808
    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 802
    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method

.method public setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    const-string v0, "GlideModeGallery"

    const-string v1, "This function is deprecated and does nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public setAdapter(Lcom/htc/widget/DeckControlAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 318
    if-nez p1, :cond_0

    .line 321
    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    .line 322
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlSPAdapter;->destroy()V

    .line 323
    iput-object v1, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    .line 325
    new-instance v0, Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    .line 326
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    new-instance v1, Lcom/htc/widget/DeckControl$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/DeckControl$2;-><init>(Lcom/htc/widget/DeckControl;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V

    .line 368
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setAdatper(Lcom/htc/widget/DeckControlAdapter;)V

    .line 346
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 350
    :cond_1
    iget v0, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    if-lez v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    iget v2, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControlSPAdapter;->setItemSize(II)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mDefaultView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setDefaultView(Landroid/view/View;)V

    .line 358
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/DeckControl;->mIsDefaultLayout:Z

    if-nez v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mfSpacing:F

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setSpacing(F)V

    .line 362
    :cond_4
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setYOffset(F)V

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-super {p0, v0}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    goto :goto_0
.end method

.method public setBackground(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/4 v1, 0x1

    .line 613
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 615
    :cond_0
    invoke-static {p1, v1, v1}, Lcom/htc/sunny/SBitmap;->createBitmap(III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    .line 617
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setBackground(Lcom/htc/sunny/SBitmap;)V

    .line 621
    :cond_1
    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:setBackground(int)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x1

    .line 626
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 631
    :cond_2
    invoke-static {p1}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    .line 633
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setBackground(Lcom/htc/sunny/SBitmap;)V

    .line 637
    :cond_3
    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:setBackground(Bitmap)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x1

    .line 644
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    new-instance v0, Lcom/htc/widget/DeckControl$DrawThread;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/DeckControl$DrawThread;-><init>(Lcom/htc/widget/DeckControl;Landroid/graphics/drawable/Drawable;)V

    .line 648
    .local v0, drwathread:Lcom/htc/widget/DeckControl$DrawThread;
    invoke-virtual {v0}, Lcom/htc/widget/DeckControl$DrawThread;->start()V

    .line 651
    const-string v1, "GlideModeGallery"

    const-string v2, "GlideMode:setBackground(Drawable)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 425
    return-void
.end method

.method public setDefaultView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mDefaultView:Landroid/view/View;

    .line 418
    return-void
.end method

.method public setFlingAccelerate(F)Z
    .locals 1
    .parameter "fAccRate"

    .prologue
    .line 296
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 298
    iput p1, p0, Lcom/htc/widget/DeckControl;->mfFlingAccelerate:F

    .line 299
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemSize(II)V
    .locals 0
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 402
    iput p1, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    .line 403
    iput p2, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    .line 406
    return-void
.end method

.method public setOnFinishedMovementListener(Lcom/htc/widget/DeckControl$OnFinishedMovementListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mFinMoveListener:Lcom/htc/widget/DeckControl$OnFinishedMovementListener;

    .line 457
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mClickListener:Lcom/htc/widget/DeckControl$OnItemClickListener;

    .line 437
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mSelectedListener:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    .line 447
    return-void
.end method

.method public setOnMovementListener(Lcom/htc/widget/DeckControl$OnMovementListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    .line 467
    return-void
.end method

.method public setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;->setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    .line 200
    return-void
.end method

.method public setSpacing(F)V
    .locals 1
    .parameter "fSpace"

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DeckControl;->mIsDefaultLayout:Z

    .line 380
    iput p1, p0, Lcom/htc/widget/DeckControl;->mfSpacing:F

    .line 381
    return-void
.end method

.method public setXRotateAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setXRotateAngle(F)V

    .line 779
    :cond_0
    return-void
.end method

.method public setYOffset(F)V
    .locals 0
    .parameter "fOffset"

    .prologue
    .line 390
    iput p1, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    .line 391
    return-void
.end method

.method public setYRotateAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setYRotateAngle(F)V

    .line 788
    :cond_0
    return-void
.end method

.method public setZRotateAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setZRotateAngle(F)V

    .line 797
    :cond_0
    return-void
.end method
