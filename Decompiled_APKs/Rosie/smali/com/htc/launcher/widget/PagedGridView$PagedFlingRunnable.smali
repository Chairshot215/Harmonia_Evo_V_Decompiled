.class Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;
.super Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;
.source "PagedGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/PagedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagedFlingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/PagedGridView;


# direct methods
.method constructor <init>(Lcom/htc/launcher/widget/PagedGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingGridView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/widget/PagedGridView;->access$002(Lcom/htc/launcher/widget/PagedGridView;Z)Z

    .line 311
    invoke-super {p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->endFling()V

    .line 312
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #calls: Lcom/htc/launcher/widget/PagedGridView;->checkPagePosition()V
    invoke-static {v0}, Lcom/htc/launcher/widget/PagedGridView;->access$100(Lcom/htc/launcher/widget/PagedGridView;)V

    .line 313
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->run()V

    .line 318
    return-void
.end method

.method public start(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/widget/PagedGridView;->access$002(Lcom/htc/launcher/widget/PagedGridView;Z)Z

    .line 323
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->start(I)V

    .line 324
    return-void
.end method

.method public startByDistance(I)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/widget/PagedGridView;->access$002(Lcom/htc/launcher/widget/PagedGridView;Z)Z

    .line 329
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    .line 330
    return-void
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 8
    .parameter "distance"
    .parameter "velocity"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #setter for: Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z
    invoke-static {v0, v7}, Lcom/htc/launcher/widget/PagedGridView;->access$002(Lcom/htc/launcher/widget/PagedGridView;Z)Z

    .line 337
    if-ltz p1, :cond_0

    .line 338
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->isNeedCheckOverTop:Z

    .line 339
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->isNeedCheckOverBottom:Z

    .line 346
    :goto_0
    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->mLastFlingY:I

    .line 348
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #getter for: Lcom/htc/launcher/widget/PagedGridView;->shift:I
    invoke-static {v0}, Lcom/htc/launcher/widget/PagedGridView;->access$200(Lcom/htc/launcher/widget/PagedGridView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #getter for: Lcom/htc/launcher/widget/PagedGridView;->scaleD:F
    invoke-static {v2}, Lcom/htc/launcher/widget/PagedGridView;->access$300(Lcom/htc/launcher/widget/PagedGridView;)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #getter for: Lcom/htc/launcher/widget/PagedGridView;->scaleV:F
    invoke-static {v2}, Lcom/htc/launcher/widget/PagedGridView;->access$400(Lcom/htc/launcher/widget/PagedGridView;)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v6, v0, v2

    .line 349
    .local v6, duration:F
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #getter for: Lcom/htc/launcher/widget/PagedGridView;->min:I
    invoke-static {v0}, Lcom/htc/launcher/widget/PagedGridView;->access$500(Lcom/htc/launcher/widget/PagedGridView;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 350
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #getter for: Lcom/htc/launcher/widget/PagedGridView;->max:I
    invoke-static {v0}, Lcom/htc/launcher/widget/PagedGridView;->access$600(Lcom/htc/launcher/widget/PagedGridView;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 352
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v2, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->mLastFlingY:I

    float-to-int v5, v6

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 353
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    const/4 v1, 0x4

    #setter for: Lcom/htc/launcher/widget/PagedGridView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/htc/launcher/widget/PagedGridView;->access$702(Lcom/htc/launcher/widget/PagedGridView;I)I

    .line 354
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #calls: Lcom/htc/launcher/widget/PagedGridView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v7}, Lcom/htc/launcher/widget/PagedGridView;->access$800(Lcom/htc/launcher/widget/PagedGridView;Z)V

    .line 355
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    #calls: Lcom/htc/launcher/widget/PagedGridView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v7}, Lcom/htc/launcher/widget/PagedGridView;->access$900(Lcom/htc/launcher/widget/PagedGridView;Z)V

    .line 356
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    invoke-virtual {v0, p0}, Lcom/htc/launcher/widget/PagedGridView;->post(Ljava/lang/Runnable;)Z

    .line 365
    invoke-static {v7}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 367
    return-void

    .line 341
    .end local v6           #duration:F
    :cond_0
    iput-boolean v7, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->isNeedCheckOverTop:Z

    .line 342
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method
