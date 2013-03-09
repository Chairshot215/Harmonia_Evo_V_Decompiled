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

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    const-string v0, "GlideModeGallery"

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->DEBUGTAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/widget/DeckControl;->debugflag:Z

    iput-boolean v1, p0, Lcom/htc/widget/DeckControl;->mIsDefaultLayout:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/widget/DeckControl;->mfFlingAccelerate:F

    iput v2, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    iput v2, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    new-instance v0, Lcom/htc/widget/DeckControl$3;

    invoke-direct {v0, p0}, Lcom/htc/widget/DeckControl$3;-><init>(Lcom/htc/widget/DeckControl;)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->bglistener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->enableHitFeedback(Z)V

    const/high16 v0, 0x3f00

    invoke-super {p0, v0}, Lcom/htc/sunny/SPresentation;->enlargeSensorArea(F)V

    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/widget/DeckControl;->mCacheSize:I

    iput-object p2, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/htc/widget/DeckControl$GlideHandlerCallback;

    invoke-direct {v1, p0, v3}, Lcom/htc/widget/DeckControl$GlideHandlerCallback;-><init>(Lcom/htc/widget/DeckControl;Lcom/htc/widget/DeckControl$1;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->bglistener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setOnGenerateBackgroundListener(Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;)V

    :cond_0
    new-instance v0, Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    new-instance v1, Lcom/htc/widget/DeckControl$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DeckControl$1;-><init>(Lcom/htc/widget/DeckControl;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V

    new-instance v0, Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/DeckControl$InternalPresentationListener;-><init>(Lcom/htc/widget/DeckControl;Lcom/htc/widget/DeckControl$1;)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-super {p0, v0}, Lcom/htc/sunny/SPresentation;->setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/DeckControl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DeckControl;)Lcom/htc/sunny/SBitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/widget/DeckControl;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/widget/DeckControl;)Lcom/htc/widget/DeckControlView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;->setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlSPAdapter;->destroy()V

    iput-object v1, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;->setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlSPAdapter;->destroy()V

    iput-object v1, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    :cond_1
    return-void
.end method

.method public finishAnimation(ILcom/htc/sunny/SAnimationController$AnimationListener;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v9, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    const/16 v10, 0x12

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    :cond_2
    new-instance v7, Lcom/htc/sunny/Vector3F;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v9, v10, v11}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    new-instance v8, Lcom/htc/sunny/Vector3F;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v9}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerCount()I

    move-result v9

    shr-int/lit8 v0, v9, 0x1

    if-ltz v0, :cond_0

    new-instance v1, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunny/SAnimationController;-><init>()V

    new-instance v9, Lcom/htc/widget/DeckControl$4;

    invoke-direct {v9, p0, p2}, Lcom/htc/widget/DeckControl$4;-><init>(Lcom/htc/widget/DeckControl;Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    invoke-virtual {v1, v9}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    int-to-long v9, p1

    invoke-virtual {v1, v9, v10}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/DeckControl;->getContainerView(I)Lcom/htc/sunny/SView;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/sunny/SView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    move v4, v0

    :goto_1
    if-lez v4, :cond_3

    new-instance v2, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v2}, Lcom/htc/sunny/SAnimationController;-><init>()V

    new-instance v3, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v3}, Lcom/htc/sunny/SAnimationController;-><init>()V

    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    sub-int v10, v0, v4

    invoke-virtual {v9, v10}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v9

    iget-object v5, v9, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v9, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    add-int v10, v0, v4

    invoke-virtual {v9, v10}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v9

    iget-object v6, v9, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v9, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    iput v9, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v9, v6, Lcom/htc/sunny/Vector3F;->mZ:F

    iput v9, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    iget v9, v5, Lcom/htc/sunny/Vector3F;->mY:F

    iput v9, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget v9, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iput v9, v8, Lcom/htc/sunny/Vector3F;->mY:F

    const/4 v9, 0x0

    iput v9, v7, Lcom/htc/sunny/Vector3F;->mX:F

    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/sunny/Vector3F;->mX:F

    invoke-virtual {v2, v5, v7}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    invoke-virtual {v3, v6, v8}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    sget-object v9, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v2, v9}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    sget-object v9, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v3, v9}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    int-to-long v9, p1

    invoke-virtual {v2, v9, v10}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    int-to-long v9, p1

    invoke-virtual {v3, v9, v10}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    sub-int v9, v0, v4

    invoke-virtual {p0, v9}, Lcom/htc/widget/DeckControl;->getContainerView(I)Lcom/htc/sunny/SView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/sunny/SView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    add-int v9, v0, v4

    invoke-virtual {p0, v9}, Lcom/htc/widget/DeckControl;->getContainerView(I)Lcom/htc/sunny/SView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/htc/sunny/SView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    const-string v9, "GlideModeGallery"

    const-string v10, "GlideMode:finishAnimation()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const-string v0, "GlideModeGallery"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/htc/sunny/SPresentation;->notifyDataSetChanged()V

    return-void
.end method

.method protected notifySelectionChange(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->notifySelectionChange(I)V

    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->notifyStateChange(I)V

    :cond_0
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 2

    const-string v0, "GlideModeGallery"

    const-string v1, "notifyUpdateItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/htc/sunny/SPresentation;->notifyUpdateItem(I)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget v0, p0, Lcom/htc/widget/DeckControl;->mfFlingAccelerate:F

    mul-float/2addr v0, p3

    invoke-super {p0, p1, p2, v0, p4}, Lcom/htc/sunny/SPresentation;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "GlideModeGallery"

    const-string v1, "This function is deprecated and does nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAdapter(Lcom/htc/widget/DeckControlAdapter;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-super {p0, v1}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/DeckControlSPAdapter;->destroy()V

    iput-object v1, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    new-instance v0, Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    new-instance v1, Lcom/htc/widget/DeckControl$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/DeckControl$2;-><init>(Lcom/htc/widget/DeckControl;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setAdatper(Lcom/htc/widget/DeckControlAdapter;)V

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    :cond_1
    iget v0, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    iget v2, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControlSPAdapter;->setItemSize(II)V

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mDefaultView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setDefaultView(Landroid/view/View;)V

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/DeckControl;->mIsDefaultLayout:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mfSpacing:F

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setSpacing(F)V

    :cond_4
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    iget v1, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter;->setYOffset(F)V

    :cond_5
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-super {p0, v0}, Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V

    goto :goto_0
.end method

.method public setBackground(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_0
    invoke-static {p1, v1, v1}, Lcom/htc/sunny/SBitmap;->createBitmap(III)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setBackground(Lcom/htc/sunny/SBitmap;)V

    :cond_1
    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:setBackground(int)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_2
    invoke-static {p1}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;

    iget-object v1, p0, Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlView;->setBackground(Lcom/htc/sunny/SBitmap;)V

    :cond_3
    const-string v0, "GlideModeGallery"

    const-string v1, "GlideMode:setBackground(Bitmap)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/widget/DeckControl$DrawThread;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/DeckControl$DrawThread;-><init>(Lcom/htc/widget/DeckControl;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/htc/widget/DeckControl$DrawThread;->start()V

    const-string v1, "GlideModeGallery"

    const-string v2, "GlideMode:setBackground(Drawable)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public setDefaultView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mDefaultView:Landroid/view/View;

    return-void
.end method

.method public setFlingAccelerate(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/htc/widget/DeckControl;->mfFlingAccelerate:F

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemSize(II)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DeckControl;->mnItemWidth:I

    iput p2, p0, Lcom/htc/widget/DeckControl;->mnItemHeight:I

    return-void
.end method

.method public setOnFinishedMovementListener(Lcom/htc/widget/DeckControl$OnFinishedMovementListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mFinMoveListener:Lcom/htc/widget/DeckControl$OnFinishedMovementListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/DeckControl$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mClickListener:Lcom/htc/widget/DeckControl$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/DeckControl$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mSelectedListener:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    return-void
.end method

.method public setOnMovementListener(Lcom/htc/widget/DeckControl$OnMovementListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    return-void
.end method

.method public setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mInternalListener:Lcom/htc/widget/DeckControl$InternalPresentationListener;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControl$InternalPresentationListener;->setAppListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V

    return-void
.end method

.method public setSpacing(F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DeckControl;->mIsDefaultLayout:Z

    iput p1, p0, Lcom/htc/widget/DeckControl;->mfSpacing:F

    return-void
.end method

.method public setXRotateAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setXRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public setYOffset(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DeckControl;->mfYOffset:F

    return-void
.end method

.method public setYRotateAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setYRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public setZRotateAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControl;->mSAdapter:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter;->setZRotateAngle(F)V

    :cond_0
    return-void
.end method
