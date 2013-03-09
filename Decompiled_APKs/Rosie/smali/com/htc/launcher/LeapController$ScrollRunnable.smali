.class Lcom/htc/launcher/LeapController$ScrollRunnable;
.super Ljava/lang/Object;
.source "LeapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LeapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final FIXED_FPS:I = 0x10


# instance fields
.field private endRunnable:Ljava/lang/Runnable;

.field private isFinished:Z

.field private final mFixFps:Z

.field private mScroller:Lcom/htc/launcher/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/launcher/LeapController;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/LeapController;Z)V
    .locals 2
    .parameter
    .parameter "fixFps"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z

    .line 493
    new-instance v0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LeapController$ScrollRunnable$1;-><init>(Lcom/htc/launcher/LeapController$ScrollRunnable;)V

    iput-object v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->endRunnable:Ljava/lang/Runnable;

    .line 440
    new-instance v0, Lcom/htc/launcher/widget/HtcScroller;

    #getter for: Lcom/htc/launcher/LeapController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/launcher/LeapController;->access$1200(Lcom/htc/launcher/LeapController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/launcher/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mScroller:Lcom/htc/launcher/widget/HtcScroller;

    .line 441
    iput-boolean p2, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mFixFps:Z

    .line 442
    return-void
.end method

.method static synthetic access$1702(Lcom/htc/launcher/LeapController$ScrollRunnable;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z

    return p1
.end method

.method private start()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z

    .line 451
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1500()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 464
    iget-boolean v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z

    if-eqz v4, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mScroller:Lcom/htc/launcher/widget/HtcScroller;

    .line 466
    .local v3, scroller:Lcom/htc/launcher/widget/HtcScroller;
    invoke-virtual {v3}, Lcom/htc/launcher/widget/HtcScroller;->computeScrollOffset()Z

    move-result v1

    .line 467
    .local v1, more:Z
    if-eqz v1, :cond_5

    .line 468
    iget-boolean v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mFixFps:Z

    if-eqz v4, :cond_2

    .line 469
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1500()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x10

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/HtcScroller;->getCurrX()I

    move-result v5

    iput v5, v4, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 472
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/HtcScroller;->getCurrY()I

    move-result v5

    #setter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v4, v5}, Lcom/htc/launcher/LeapController;->access$702(Lcom/htc/launcher/LeapController;I)I

    .line 474
    iget-boolean v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mFixFps:Z

    if-nez v4, :cond_3

    .line 475
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1500()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    :cond_3
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 478
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 479
    .local v2, player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iget v5, v5, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v6}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v6

    invoke-interface {v2, v4, v7, v5, v6}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomOutAnimationProgress(IIFI)V

    goto :goto_1

    .line 482
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 484
    .restart local v2       #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iget v5, v5, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v6}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v6

    invoke-interface {v2, v4, v7, v5, v6}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomInAnimationProgress(IIFI)V

    goto :goto_2

    .line 489
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_5
    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$1600(Lcom/htc/launcher/LeapController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public startScroll(IIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mScroller:Lcom/htc/launcher/widget/HtcScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/widget/HtcScroller;->startScroll(IIIII)V

    .line 446
    invoke-direct {p0}, Lcom/htc/launcher/LeapController$ScrollRunnable;->start()V

    .line 447
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->mScroller:Lcom/htc/launcher/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/HtcScroller;->abortAnimation()V

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z

    .line 457
    return-void
.end method
