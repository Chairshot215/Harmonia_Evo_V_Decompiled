.class Lcom/google/android/common/SwipeySwitcher$3;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/SwipeySwitcher;->makeGestureDetector()Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGoLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    .line 371
    :goto_0
    if-le v0, v2, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 370
    goto :goto_0

    :cond_1
    move v0, v1

    .line 371
    goto :goto_1
.end method

.method private canGoRight()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    .line 376
    :goto_0
    if-le v0, v2, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 375
    goto :goto_0

    :cond_1
    move v0, v1

    .line 376
    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/google/android/common/SwipeySwitcher;->mDownX:I
    invoke-static {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->access$202(Lcom/google/android/common/SwipeySwitcher;I)I

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 381
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mDragging:Z
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$400(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 417
    :goto_0
    return v0

    .line 388
    :cond_0
    cmpl-float v0, p3, v1

    if-nez v0, :cond_1

    move v0, v3

    .line 391
    goto :goto_0

    .line 392
    :cond_1
    cmpl-float v0, p3, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoLeft()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 393
    goto :goto_0

    .line 394
    :cond_2
    cmpg-float v0, p3, v1

    if-gez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoRight()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 395
    goto :goto_0

    .line 403
    :cond_3
    cmpg-float v0, p3, v1

    if-gez v0, :cond_4

    move v0, v4

    .line 404
    :goto_1
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_5

    move v1, v4

    .line 406
    :goto_2
    if-eq v0, v1, :cond_6

    .line 407
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->recenter()V
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$500(Lcom/google/android/common/SwipeySwitcher;)V

    :goto_3
    move v0, v4

    .line 417
    goto :goto_0

    :cond_4
    move v0, v3

    .line 403
    goto :goto_1

    :cond_5
    move v1, v3

    .line 404
    goto :goto_2

    .line 409
    :cond_6
    if-eqz v0, :cond_7

    .line 410
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->ensureRight()V
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$600(Lcom/google/android/common/SwipeySwitcher;)V

    .line 415
    :goto_4
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V
    invoke-static {v1, v0}, Lcom/google/android/common/SwipeySwitcher;->access$800(Lcom/google/android/common/SwipeySwitcher;Z)V

    goto :goto_3

    .line 412
    :cond_7
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->ensureLeft()V
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$700(Lcom/google/android/common/SwipeySwitcher;)V

    goto :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 426
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mDragging:Z
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$400(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 467
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v0

    float-to-int v1, p3

    add-int/2addr v0, v1

    .line 432
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoLeft()Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 438
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 440
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 457
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    .line 458
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v2

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    if-eqz v2, :cond_4

    move v0, v4

    .line 463
    :goto_2
    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$1000(Lcom/google/android/common/SwipeySwitcher;)V

    :cond_2
    move v0, v4

    .line 467
    goto :goto_0

    .line 434
    :cond_3
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher$3;->canGoRight()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    goto :goto_1

    .line 460
    :cond_4
    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$3;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    if-eqz v0, :cond_5

    move v0, v4

    .line 461
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method
