.class Lcom/htc/launcher/LeapController$1;
.super Ljava/lang/Object;
.source "LeapController.java"

# interfaces
.implements Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LeapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LeapController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LeapController;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private playRemainingAnimation()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " => mCurrentZoomingAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlayZoomOutAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlayZoomInAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimationProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v2, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mTouchEventHolder:I
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$200(Lcom/htc/launcher/LeapController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v0, v1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$1100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ScrollRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v1, v1, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v3, v3, 0x3e8

    iget-object v5, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v5, v5, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v5, v5, 0x3e8

    mul-int/lit16 v5, v5, 0x1f4

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/LeapController$ScrollRunnable;->startScroll(IIIII)V

    .line 226
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0, v4}, Lcom/htc/launcher/LeapController;->setTouchEventHolder(I)V

    .line 227
    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$1100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ScrollRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v1, v1, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    neg-int v3, v3

    iget-object v5, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v5, v5, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1f4

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/LeapController$ScrollRunnable;->startScroll(IIIII)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v0, v1, :cond_4

    .line 208
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$1100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ScrollRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v1, v1, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    neg-int v3, v3

    iget-object v5, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v5, v5, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1f4

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/LeapController$ScrollRunnable;->startScroll(IIIII)V

    goto :goto_0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v0, v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mScrollRunnable:Lcom/htc/launcher/LeapController$ScrollRunnable;
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$1100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ScrollRunnable;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v6, v0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v7

    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v0, v0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v8, v0, 0x3e8

    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/launcher/LeapController;->access$1200(Lcom/htc/launcher/LeapController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v1}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v1

    sub-int v9, v0, v1

    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v0, v0, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    rsub-int v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x1f4

    div-int/lit16 v10, v0, 0x3e8

    invoke-virtual/range {v5 .. v10}, Lcom/htc/launcher/LeapController$ScrollRunnable;->startScroll(IIIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActionCancel(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    const-string v1, "TOUCH EVENT: onActionCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/LeapController$1;->playRemainingAnimation()V

    .line 232
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0, v2}, Lcom/htc/launcher/LeapController;->setTouchEventHolder(I)V

    .line 233
    return v2
.end method

.method public onActionUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 184
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    const-string v1, "TOUCH EVENT: onActionUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/LeapController$1;->playRemainingAnimation()V

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mIsLeapMode:Z
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$000(Lcom/htc/launcher/LeapController;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    return v4

    .line 275
    :cond_1
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "LeapMode"

    const-string v3, "TOUCH EVENT: onLongPress(), Rearrange."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$1300(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LeapController$LeapListener;

    .line 277
    .local v1, listener:Lcom/htc/launcher/LeapController$LeapListener;
    invoke-interface {v1}, Lcom/htc/launcher/LeapController$LeapListener;->onLongPress()V

    goto :goto_0
.end method

.method public onMultiTouch(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 255
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LeapMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOUCH EVENT: onMultiTouch(), mIsLeapMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mIsLeapMode:Z
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$000(Lcom/htc/launcher/LeapController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentZoomingAnimation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v1}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v1

    sget-object v2, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v1, v2, :cond_1

    .line 257
    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/LeapController;->setTouchEventHolder(I)V

    .line 259
    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mIsLeapMode:Z
    invoke-static {v1}, Lcom/htc/launcher/LeapController;->access$000(Lcom/htc/launcher/LeapController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;
    invoke-static {v1}, Lcom/htc/launcher/LeapController;->access$100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$LeapLayer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/htc/launcher/LeapController$LeapLayer;->findPage(FF)I

    move-result v0

    .line 262
    .local v0, selectPage:I
    if-ltz v0, :cond_1

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #setter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v1, v0}, Lcom/htc/launcher/LeapController;->access$602(Lcom/htc/launcher/LeapController;I)I

    .line 264
    iget-object v1, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->leaveLeapMode()V

    .line 269
    .end local v0           #selectPage:I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onScale(F)Z
    .locals 11
    .parameter "ratio"

    .prologue
    const/16 v10, 0x3e8

    const/high16 v9, 0x447a

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 139
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mIsLeapMode:Z
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$000(Lcom/htc/launcher/LeapController;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$LeapLayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/launcher/LeapController$LeapLayer;->canEnterLeapMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "com.htc.launcher"

    const-string v3, "leap_view"

    const-string v4, "leapview_launch"

    const-string v5, "pitch"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/launcher/Logger;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "LeapMode"

    const-string v3, "HTC user profiling     leapview_launch     true,pitch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v2}, Lcom/htc/launcher/LeapController;->enterLeapMode()V

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mTouchEventHolder:I
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$200(Lcom/htc/launcher/LeapController;)I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 145
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 148
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    sub-float v3, v6, p1

    mul-float/2addr v3, v9

    invoke-static {}, Lcom/htc/launcher/LeapController;->access$400()F

    move-result v4

    div-float v4, v6, v4

    sub-float v4, v6, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 150
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 151
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 152
    .local v1, player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v4

    invoke-interface {v1, v2, v8, v3, v4}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomOutAnimationProgress(IIFI)V

    goto :goto_0

    .line 154
    .end local v1           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v2, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_3

    cmpl-float v2, p1, v6

    if-nez v2, :cond_6

    .line 155
    :cond_3
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    sget-object v3, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    #setter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v2, v3}, Lcom/htc/launcher/LeapController;->access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 174
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "LeapMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOUCH EVENT: onZooming("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mCurrentZoomingAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayZoomOutAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomOutAnimation:Z
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$300(Lcom/htc/launcher/LeapController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayZoomInAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAnimationProgress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v4, v4, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_5
    return v7

    .line 157
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    sget-object v3, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    #setter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v2, v3}, Lcom/htc/launcher/LeapController;->access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;

    goto :goto_1

    .line 159
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mPlayingZoomInAnimation:Z
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$900(Lcom/htc/launcher/LeapController;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    sub-float v3, p1, v6

    mul-float/2addr v3, v9

    invoke-static {}, Lcom/htc/launcher/LeapController;->access$400()F

    move-result v4

    sub-float/2addr v4, v6

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 164
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    .line 165
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapAnimationPlayers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$500(Lcom/htc/launcher/LeapController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    .line 166
    .restart local v1       #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v2}, Lcom/htc/launcher/LeapController;->access$600(Lcom/htc/launcher/LeapController;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v3, v3, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mVirtualScrollX:I
    invoke-static {v4}, Lcom/htc/launcher/LeapController;->access$700(Lcom/htc/launcher/LeapController;)I

    move-result v4

    invoke-interface {v1, v2, v8, v3, v4}, Lcom/htc/launcher/LeapController$LeapAnimationPlayer;->setZoomInAnimationProgress(IIFI)V

    goto :goto_2

    .line 168
    .end local v1           #player:Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
    :cond_8
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    iget v2, v2, Lcom/htc/launcher/LeapController;->mAnimationProgress:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_9

    .line 169
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    sget-object v3, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    #setter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v2, v3}, Lcom/htc/launcher/LeapController;->access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;

    goto/16 :goto_1

    .line 171
    :cond_9
    iget-object v2, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    sget-object v3, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    #setter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v2, v3}, Lcom/htc/launcher/LeapController;->access$802(Lcom/htc/launcher/LeapController;Lcom/htc/launcher/LeapController$ZoomDirection;)Lcom/htc/launcher/LeapController$ZoomDirection;

    goto/16 :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mIsLeapMode:Z
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$000(Lcom/htc/launcher/LeapController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v2

    .line 286
    :cond_1
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    const-string v1, "TOUCH EVENT: onScroll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mIsLeapMode:Z
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$000(Lcom/htc/launcher/LeapController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mRearrange:Z
    invoke-static {v0}, Lcom/htc/launcher/LeapController;->access$1400(Lcom/htc/launcher/LeapController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LeapMode"

    const-string v1, "TOUCH EVENT: onShowPress(), Rearrange."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 237
    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v3}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-static {}, Lcom/htc/launcher/LeapController;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LeapMode"

    const-string v4, "TOUCH EVENT: onSingleTapUp()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mZoomDirection:Lcom/htc/launcher/LeapController$ZoomDirection;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$800(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$ZoomDirection;

    move-result-object v3

    sget-object v4, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne v3, v4, :cond_2

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 241
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 243
    .local v2, y:F
    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #getter for: Lcom/htc/launcher/LeapController;->mLeapLayer:Lcom/htc/launcher/LeapController$LeapLayer;
    invoke-static {v3}, Lcom/htc/launcher/LeapController;->access$100(Lcom/htc/launcher/LeapController;)Lcom/htc/launcher/LeapController$LeapLayer;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/htc/launcher/LeapController$LeapLayer;->findPage(FF)I

    move-result v0

    .line 244
    .local v0, selectPage:I
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "LeapMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLeapLayer.findPage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    if-ltz v0, :cond_2

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    #setter for: Lcom/htc/launcher/LeapController;->mSelectPage:I
    invoke-static {v3, v0}, Lcom/htc/launcher/LeapController;->access$602(Lcom/htc/launcher/LeapController;I)I

    .line 247
    iget-object v3, p0, Lcom/htc/launcher/LeapController$1;->this$0:Lcom/htc/launcher/LeapController;

    invoke-virtual {v3}, Lcom/htc/launcher/LeapController;->leaveLeapMode()V

    .line 251
    .end local v0           #selectPage:I
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    const/4 v3, 0x0

    return v3
.end method
