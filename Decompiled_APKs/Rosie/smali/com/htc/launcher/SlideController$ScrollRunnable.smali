.class Lcom/htc/launcher/SlideController$ScrollRunnable;
.super Ljava/lang/Object;
.source "SlideController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/SlideController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final FIXED_FPS:I = 0x10


# instance fields
.field private isFinished:Z

.field private mFixFps:Z

.field private mScroller:Lcom/htc/launcher/SlideController$SlowEdgeScroller;

.field final synthetic this$0:Lcom/htc/launcher/SlideController;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/SlideController;Z)V
    .locals 2
    .parameter
    .parameter "fixFps"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished:Z

    .line 190
    new-instance v0, Lcom/htc/launcher/SlideController$SlowEdgeScroller;

    iget-object v1, p1, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/launcher/SlideController$SlowEdgeScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mScroller:Lcom/htc/launcher/SlideController$SlowEdgeScroller;

    .line 191
    iput-boolean p2, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mFixFps:Z

    .line 192
    return-void
.end method

.method private start()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished:Z

    .line 211
    iget-object v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v0, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p0}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 226
    iget-boolean v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished:Z

    if-eqz v6, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mScroller:Lcom/htc/launcher/SlideController$SlowEdgeScroller;

    .line 229
    .local v4, scroller:Lcom/htc/launcher/widget/HtcScroller;
    invoke-virtual {v4}, Lcom/htc/launcher/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 230
    .local v3, more:Z
    if-eqz v3, :cond_4

    .line 231
    iget-boolean v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mFixFps:Z

    if-eqz v6, :cond_2

    .line 232
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    const-wide/16 v7, 0x10

    invoke-virtual {v6, p0, v7, v8}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    :cond_2
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    invoke-virtual {v4}, Lcom/htc/launcher/widget/HtcScroller;->getScrollingProgress()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/launcher/SlideController;->onScrollProgress(F)V

    .line 234
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    invoke-virtual {v4}, Lcom/htc/launcher/widget/HtcScroller;->getHighPrecisionCurrX()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/launcher/SlideController;->scrollXConverter(F)F

    move-result v5

    .line 235
    .local v5, x:F
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    #getter for: Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/launcher/SlideController;->access$000(Lcom/htc/launcher/SlideController;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 236
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    #getter for: Lcom/htc/launcher/SlideController;->mSlideListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/launcher/SlideController;->access$000(Lcom/htc/launcher/SlideController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/Workspace$OnSlideListener;

    .line 237
    .local v2, listener:Lcom/htc/launcher/Workspace$OnSlideListener;
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v7, v7, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7}, Lcom/htc/launcher/Workspace;->getScrollRange()I

    move-result v7

    iget-object v8, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v8, v8, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v8}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v8

    invoke-interface {v2, v5, v6, v7, v8}, Lcom/htc/launcher/Workspace$OnSlideListener;->onScrollTo(FFII)V

    goto :goto_1

    .line 240
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/htc/launcher/Workspace$OnSlideListener;
    :cond_3
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    float-to-int v7, v5

    invoke-virtual {v6, v7, v9}, Lcom/htc/launcher/Workspace;->updateScrollValue(II)V

    .line 247
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset()V

    .line 249
    iget-boolean v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mFixFps:Z

    if-nez v6, :cond_0

    .line 250
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6, p0}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 251
    .end local v5           #x:F
    :cond_4
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getNextScreen()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 252
    invoke-virtual {v4}, Lcom/htc/launcher/widget/HtcScroller;->isAborted()Z

    move-result v6

    if-nez v6, :cond_5

    .line 253
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6}, Lcom/htc/launcher/SlideController;->onScrollEnd()V

    .line 254
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getNextScreen()I

    move-result v6

    iget-object v7, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    invoke-virtual {v7}, Lcom/htc/launcher/SlideController;->getCurrPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    .local v0, currentScreen:I
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6, v0}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 256
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->setScreen(I)V

    .line 257
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->endScroll()V

    .line 259
    .end local v0           #currentScreen:I
    :cond_5
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6, v8}, Lcom/htc/launcher/Workspace;->setBounceScreen(I)V

    .line 260
    iget-object v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v6, v6, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6, v8}, Lcom/htc/launcher/Workspace;->setNextScreen(I)V

    .line 261
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished:Z

    goto/16 :goto_0
.end method

.method public startScroll(IIIIILcom/htc/launcher/widget/EasingFunction;)V
    .locals 8
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"
    .parameter "function"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mScroller:Lcom/htc/launcher/SlideController$SlowEdgeScroller;

    iget-object v1, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v1, v1, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->startScroll(IIIIILcom/htc/launcher/widget/EasingFunction;I)V

    .line 206
    invoke-direct {p0}, Lcom/htc/launcher/SlideController$ScrollRunnable;->start()V

    .line 207
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 215
    iget-object v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v0, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setBounceScreen(I)V

    .line 216
    iget-object v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->this$0:Lcom/htc/launcher/SlideController;

    iget-object v0, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setNextScreen(I)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->isFinished:Z

    .line 218
    iget-object v0, p0, Lcom/htc/launcher/SlideController$ScrollRunnable;->mScroller:Lcom/htc/launcher/SlideController$SlowEdgeScroller;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController$SlowEdgeScroller;->abortAnimation()V

    .line 219
    return-void
.end method
