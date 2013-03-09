.class public Lcom/htc/launcher/SlideController;
.super Ljava/lang/Object;
.source "SlideController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/SlideController$ScrollRunnable;,
        Lcom/htc/launcher/SlideController$SlowEdgeScroller;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final localLOGD:Z


# instance fields
.field protected mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

.field private mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

.field private mScrollRunnable:Lcom/htc/launcher/SlideController$ScrollRunnable;

.field private mSlideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Workspace$OnSlideListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchDeltaX:I

.field protected mWorkspace:Lcom/htc/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/SlideController;->LOG_TAG:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/SlideController;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/Workspace;)V
    .locals 2
    .parameter "context"
    .parameter "workspace"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/htc/launcher/SlideController;->defaultEasingFunction()Lcom/htc/launcher/widget/EasingFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 38
    iput-object p2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 39
    new-instance v0, Lcom/htc/launcher/SlideController$ScrollRunnable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/SlideController$ScrollRunnable;-><init>(Lcom/htc/launcher/SlideController;Z)V

    iput-object v0, p0, Lcom/htc/launcher/SlideController;->mScrollRunnable:Lcom/htc/launcher/SlideController$ScrollRunnable;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/SlideController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private defaultEasingFunction()Lcom/htc/launcher/widget/EasingFunction;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Lcom/htc/launcher/widget/EaseOutCubic;

    invoke-direct {v0}, Lcom/htc/launcher/widget/EaseOutCubic;-><init>()V

    .line 474
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/launcher/widget/EaseOutBack;

    invoke-direct {v0}, Lcom/htc/launcher/widget/EaseOutBack;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public actionDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 499
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Workspace$OnSlideListener;

    .line 501
    .local v1, listener:Lcom/htc/launcher/Workspace$OnSlideListener;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, p1, v2}, Lcom/htc/launcher/Workspace$OnSlideListener;->onTouch(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 504
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/Workspace$OnSlideListener;
    :cond_0
    return-void
.end method

.method protected getCurrPageCount()I
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v0

    return v0
.end method

.method protected getCurrentScreenIndexByScrollX()I
    .locals 4

    .prologue
    .line 507
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v1

    .line 508
    .local v1, width:I
    if-gtz v1, :cond_1

    .line 509
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 512
    .local v0, page:I
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method protected getCurrentSinkScreenIndexByScrollX()I
    .locals 4

    .prologue
    .line 521
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v1

    .line 522
    .local v1, width:I
    if-gtz v1, :cond_1

    .line 523
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 529
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 526
    .local v0, page:I
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method protected getDeltaXForSnapScreen(III)I
    .locals 3
    .parameter "currentScreen"
    .parameter "nextScreen"
    .parameter "velocity"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v2

    mul-int v1, p2, v2

    .line 342
    .local v1, newX:I
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v2

    sub-int v0, v1, v2

    .line 343
    .local v0, delta:I
    return v0
.end method

.method public getDestinationScreen(II)I
    .locals 2
    .parameter "currentTouchScreen"
    .parameter "velocityX"

    .prologue
    .line 116
    if-lez p2, :cond_2

    .line 117
    if-nez p1, :cond_1

    .line 118
    const/4 p1, 0x0

    .line 126
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 120
    .restart local p1
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 123
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 126
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method protected getKeepSinkVelocity()F
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method protected getSnapOffset(I)I
    .locals 1
    .parameter "velocityX"

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method protected isSinking()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isSlideFinish()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mScrollRunnable:Lcom/htc/launcher/SlideController$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished()Z

    move-result v0

    return v0
.end method

.method protected onScrollEnd()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method protected onScrollProgress(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 311
    return-void
.end method

.method public registerSlideListener(Lcom/htc/launcher/Workspace$OnSlideListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public scrollLeft()Z
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getNextScreen()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    .line 444
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollRight()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getNextScreen()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    .line 454
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final scrollTo(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/htc/launcher/Workspace;->updateScrollValue(II)V

    .line 90
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Workspace$OnSlideListener;

    .line 91
    .local v1, listener:Lcom/htc/launcher/Workspace$OnSlideListener;
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollRange()I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/htc/launcher/Workspace$OnSlideListener;->onScrollTo(FFII)V

    goto :goto_0

    .line 93
    .end local v1           #listener:Lcom/htc/launcher/Workspace$OnSlideListener;
    :cond_0
    return-void
.end method

.method public scrollXConverter(F)F
    .locals 4
    .parameter "x"

    .prologue
    .line 488
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x5

    .line 489
    .local v0, leftEdge:I
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    add-int v1, v2, v3

    .line 490
    .local v1, rightEdge:I
    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 491
    int-to-float p1, v0

    .line 495
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 492
    .restart local p1
    :cond_1
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 493
    int-to-float p1, v1

    goto :goto_0
.end method

.method public setCurrntScreen(I)V
    .locals 0
    .parameter "currentScreen"

    .prologue
    .line 480
    return-void
.end method

.method public setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V
    .locals 0
    .parameter "scrollMonitor"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/launcher/SlideController;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    .line 438
    return-void
.end method

.method public setTouchDelta(I)V
    .locals 0
    .parameter "delta"

    .prologue
    .line 539
    iput p1, p0, Lcom/htc/launcher/SlideController;->mTouchDeltaX:I

    .line 540
    return-void
.end method

.method public slideBy(FFZ)V
    .locals 3
    .parameter "deltaX"
    .parameter "scrollX"
    .parameter "isPortrait"

    .prologue
    .line 56
    if-nez p3, :cond_0

    .line 57
    const/high16 v2, 0x4000

    mul-float/2addr p1, v2

    .line 61
    :cond_0
    add-float v2, p2, p1

    invoke-virtual {p0, v2}, Lcom/htc/launcher/SlideController;->scrollXConverter(F)F

    move-result v1

    .line 70
    .local v1, scrollToX:F
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/launcher/SlideController;->scrollTo(FF)V

    .line 72
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/Workspace$OnSlideListener;

    goto :goto_0

    .line 78
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public snapScreen(II)V
    .locals 3
    .parameter "currentTouchScreen"
    .parameter "velocityX"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->isSinking()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getKeepSinkVelocity()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrentSinkScreenIndexByScrollX()I

    move-result p1

    .line 297
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/SlideController;->getDestinationScreen(II)I

    move-result v0

    .line 301
    .local v0, destinationScreen:I
    invoke-virtual {p0, v0, p2}, Lcom/htc/launcher/SlideController;->snapToScreen(II)V

    .line 302
    return-void
.end method

.method public snapToDefaultScreen(I)I
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->beginFling()V

    .line 306
    invoke-virtual {p0, p1}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    .line 307
    const/16 v0, 0x3e8

    return v0
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 462
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    .line 463
    .local v0, screenWidth:I
    iget-object v2, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 465
    .local v1, whichScreen:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/launcher/SlideController;->snapToScreen(II)V

    .line 466
    return-void
.end method

.method public snapToScreen(I)V
    .locals 12
    .parameter "whichScreen"

    .prologue
    const-wide/high16 v10, 0x4084

    const-wide/high16 v8, 0x3ff8

    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/htc/launcher/Workspace;->beginScroll(ZI)V

    .line 327
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 329
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->setNextScreen(I)V

    .line 331
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/htc/launcher/SlideController;->getDeltaXForSnapScreen(III)I

    move-result v3

    .line 334
    .local v3, delta:I
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/htc/launcher/SlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapToScreen Duration = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    sget v6, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", delta = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mScrollSpeedScale = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, v8

    sget v0, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    float-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v5, v4

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 338
    return-void
.end method

.method snapToScreen(II)V
    .locals 7
    .parameter "whichScreen"
    .parameter "velocityX"

    .prologue
    const/16 v5, 0x1f4

    const/4 v2, 0x0

    .line 360
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/launcher/SlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SlideController.snapToScreen("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v2, p1}, Lcom/htc/launcher/Workspace;->beginScroll(ZI)V

    .line 364
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 365
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->setNextScreen(I)V

    .line 368
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->isSinking()Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v0, p2

    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getKeepSinkVelocity()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/htc/launcher/SlideController;->getCurrentSinkScreenIndexByScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/launcher/SlideController;->getDeltaXForSnapScreen(III)I

    move-result v3

    .line 377
    .local v3, delta:I
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {p0, p2}, Lcom/htc/launcher/SlideController;->getSnapOffset(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/launcher/Workspace;->updateSnapInfo(II)V

    .line 379
    if-nez p2, :cond_7

    .line 380
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 381
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    if-le v0, v1, :cond_3

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutDuration:F

    mul-float/2addr v0, v4

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v6, Lcom/htc/launcher/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/launcher/widget/EaseOutCubic;-><init>()V

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 419
    :goto_1
    return-void

    .line 371
    .end local v3           #delta:I
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/launcher/SlideController;->getDeltaXForSnapScreen(III)I

    move-result v3

    .restart local v3       #delta:I
    goto :goto_0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackDuration:F

    mul-float/2addr v0, v4

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto :goto_1

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    if-le v0, v1, :cond_6

    .line 388
    :cond_5
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutDuration:F

    mul-float/2addr v0, v4

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    mul-float/2addr v0, v4

    float-to-int v5, v0

    new-instance v6, Lcom/htc/launcher/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/launcher/widget/EaseOutCubic;-><init>()V

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto :goto_1

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackDuration:F

    mul-float/2addr v0, v4

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    mul-float/2addr v0, v4

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto :goto_1

    .line 394
    :cond_7
    if-gez v3, :cond_9

    .line 395
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setBounceScreen(I)V

    .line 396
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    if-le v0, v1, :cond_8

    if-gez p2, :cond_8

    .line 397
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackDuration:F

    mul-float/2addr v0, v4

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    mul-float/2addr v0, v4

    float-to-int v5, v0

    new-instance v6, Lcom/htc/launcher/widget/EaseInBack;

    invoke-direct {v6}, Lcom/htc/launcher/widget/EaseInBack;-><init>()V

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto/16 :goto_1

    .line 399
    :cond_8
    invoke-virtual {p0, v3, p2}, Lcom/htc/launcher/SlideController;->startScrollByVelocityX(II)V

    goto/16 :goto_1

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setBounceScreen(I)V

    .line 407
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    if-gez v0, :cond_a

    if-lez p2, :cond_a

    .line 408
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackDuration:F

    mul-float/2addr v0, v4

    sget v4, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    mul-float/2addr v0, v4

    float-to-int v5, v0

    new-instance v6, Lcom/htc/launcher/widget/EaseInBack;

    invoke-direct {v6}, Lcom/htc/launcher/widget/EaseInBack;-><init>()V

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto/16 :goto_1

    .line 410
    :cond_a
    invoke-virtual {p0, v3, p2}, Lcom/htc/launcher/SlideController;->startScrollByVelocityX(II)V

    goto/16 :goto_1
.end method

.method protected startScrollByVelocityX(II)V
    .locals 13
    .parameter "delta"
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 422
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    .line 429
    .local v5, fixedVelocity:I
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object v0, p0

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 434
    .end local v5           #fixedVelocity:I
    :goto_1
    return-void

    .line 427
    :cond_0
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationLand:I

    .restart local v5       #fixedVelocity:I
    goto :goto_0

    .line 432
    .end local v5           #fixedVelocity:I
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v7

    mul-int/lit16 v0, p1, 0x3e8

    div-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackDuration:F

    mul-float/2addr v0, v1

    float-to-int v11, v0

    iget-object v12, p0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object v6, p0

    move v8, v2

    move v9, p1

    move v10, v2

    invoke-virtual/range {v6 .. v12}, Lcom/htc/launcher/SlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto :goto_1
.end method

.method protected startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V
    .locals 7
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mScrollRunnable:Lcom/htc/launcher/SlideController$ScrollRunnable;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/SlideController$ScrollRunnable;->startScroll(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 290
    return-void
.end method

.method public stopSlide()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mScrollRunnable:Lcom/htc/launcher/SlideController$ScrollRunnable;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController$ScrollRunnable;->stopScroll()V

    .line 277
    return-void
.end method

.method public unRegisterWorkspaceScrollListener(Lcom/htc/launcher/Workspace$OnSlideListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
