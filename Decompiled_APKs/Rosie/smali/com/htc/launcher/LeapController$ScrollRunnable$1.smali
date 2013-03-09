.class Lcom/htc/launcher/LeapController$ScrollRunnable$1;
.super Ljava/lang/Object;
.source "LeapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LeapController$ScrollRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LeapController$ScrollRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 495
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v3

    sget-object v4, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v3, v4, :cond_4

    .line 496
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iput v5, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 498
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 499
    .local v2, player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v4, v4, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iget v4, v4, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v5, v5, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v5}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v5

    invoke-interface {v2, v3, v7, v4, v5}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomOutAnimationProgress(IIFI)V

    goto :goto_0

    .line 501
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iput v6, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 503
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 504
    .restart local v2       #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v4, v4, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iget v4, v4, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v5, v5, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v5}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v5

    invoke-interface {v2, v3, v7, v4, v5}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomInAnimationProgress(IIFI)V

    goto :goto_1

    .line 508
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #setter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v3, v6}, Lcom/htc/launcher/LeapController;->access$302(Lcom/htc/launcher/LeapController;Z)Z

    .line 509
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #setter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v3, v6}, Lcom/htc/launcher/LeapController;->access$902(Lcom/htc/launcher/LeapController;Z)Z

    .line 510
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$1300(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 511
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$1300(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LeapController$LeapListener;

    .line 512
    .local v1, listener:Lcom/htc/launcher/LeapController$LeapListener;
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Lcom/htc/launcher/LeapController$LeapListener;->onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V

    goto :goto_2

    .line 515
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/LeapController$LeapListener;
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    sget-object v4, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    #setter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3, v4}, Lcom/htc/launcher/LeapController;->access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 517
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "LeapMode"

    const-string v4, "Zoom out animation end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    #setter for: Lcom/htc/launcher/LeapController$ScrollRunnable;->isFinished:Z
    invoke-static {v3, v7}, Lcom/htc/launcher/LeapController$ScrollRunnable;->access$1702(Lcom/htc/launcher/LeapController$ScrollRunnable;Z)Z

    .line 548
    return-void

    .line 518
    :cond_4
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v3

    sget-object v4, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v3, v4, :cond_3

    .line 520
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 521
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iput v6, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 522
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 523
    .restart local v2       #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v4, v4, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iget v4, v4, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v5, v5, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v5}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v5

    invoke-interface {v2, v3, v7, v4, v5}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomOutAnimationProgress(IIFI)V

    goto :goto_4

    .line 526
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_5
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 527
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iput v5, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 528
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 529
    .restart local v2       #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v4, v4, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    iget v4, v4, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v5, v5, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v5}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v5

    invoke-interface {v2, v3, v7, v4, v5}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomInAnimationProgress(IIFI)V

    goto :goto_5

    .line 534
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_6
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #setter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v3, v6}, Lcom/htc/launcher/LeapController;->access$302(Lcom/htc/launcher/LeapController;Z)Z

    .line 535
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #setter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v3, v6}, Lcom/htc/launcher/LeapController;->access$902(Lcom/htc/launcher/LeapController;Z)Z

    .line 536
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$1300(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 537
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$1300(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LeapController$LeapListener;

    .line 538
    .restart local v1       #listener:Lcom/htc/launcher/LeapController$LeapListener;
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Lcom/htc/launcher/LeapController$LeapListener;->onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V

    goto :goto_6

    .line 541
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/LeapController$LeapListener;
    :cond_7
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    sget-object v4, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    #setter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3, v4}, Lcom/htc/launcher/LeapController;->access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 543
    iget-object v3, p0, Lcom/htc/launcher/LeapController$ScrollRunnable$1;->this$1:Lcom/htc/launcher/LeapController$ScrollRunnable;

    iget-object v3, v3, Lcom/htc/launcher/LeapController$ScrollRunnable;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v3}, Lcom/htc/launcher/LeapController;->endLeapMode()V

    .line 544
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "LeapMode"

    const-string v4, "Zoom in animation end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
