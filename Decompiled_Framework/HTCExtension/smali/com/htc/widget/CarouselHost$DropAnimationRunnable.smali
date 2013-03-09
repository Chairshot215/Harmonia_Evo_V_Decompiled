.class Lcom/htc/widget/CarouselHost$DropAnimationRunnable;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropAnimationRunnable"
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mIsRunning:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/widget/CarouselHost;


# direct methods
.method public constructor <init>(Lcom/htc/widget/CarouselHost;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mAnimationDuration:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private endFling(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost;->access$1300(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DragSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost;->access$1300(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DragSource;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mDropTarget:Lcom/htc/widget/DropTarget;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost;->access$1400(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DropTarget;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/htc/widget/DragSource;->onDropAnimationEnd(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isStillRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    const/4 v5, 0x0

    #setter for: Lcom/htc/widget/CarouselHost;->mShouldStopFling:Z
    invoke-static {v4, v5}, Lcom/htc/widget/CarouselHost;->access$1502(Lcom/htc/widget/CarouselHost;Z)Z

    iput-boolean v7, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    int-to-float v5, v2

    int-to-float v6, v3

    #calls: Lcom/htc/widget/CarouselHost;->moveIndicator(FF)V
    invoke-static {v4, v5, v6}, Lcom/htc/widget/CarouselHost;->access$1600(Lcom/htc/widget/CarouselHost;FF)V

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mShouldStopFling:Z
    invoke-static {v4}, Lcom/htc/widget/CarouselHost;->access$1500(Lcom/htc/widget/CarouselHost;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v4, p0}, Lcom/htc/widget/CarouselHost;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v7}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method public startUsingPositions(IIII)V
    .locals 6

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->startCommon()V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    iget v5, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->mAnimationDuration:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z
    invoke-static {v0, v1}, Lcom/htc/widget/CarouselHost;->access$1202(Lcom/htc/widget/CarouselHost;Z)Z

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselHost;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->endFling(Z)V

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    return-void
.end method
