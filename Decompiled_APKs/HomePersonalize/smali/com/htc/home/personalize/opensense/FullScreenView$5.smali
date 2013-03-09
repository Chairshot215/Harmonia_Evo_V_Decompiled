.class Lcom/htc/home/personalize/opensense/FullScreenView$5;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 402
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v13

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->computeCurrScreenSize()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1200(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 409
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, drmTapToViewMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->measureDrmText(Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1300(Lcom/htc/home/personalize/opensense/FullScreenView;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLayoutComplete:Z
    invoke-static {v0, v13}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1402(Lcom/htc/home/personalize/opensense/FullScreenView;Z)Z

    .line 413
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    sget v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mNewOrientation:I

    iput v1, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLastOrientation:I

    .line 416
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getCurX()I

    move-result v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getFinalX()I

    move-result v1

    sub-int v9, v0, v1

    .line 419
    .local v9, dx:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->abortAnimation()V

    .line 420
    if-gez v9, :cond_2

    .line 422
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v9, v0, 0x2

    .line 427
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v1

    add-int/2addr v1, v9

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v5

    aget-object v5, v5, v13

    invoke-virtual {v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v6}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v6

    aget-object v6, v6, v13

    invoke-virtual {v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->getScrollDuration(II)I
    invoke-static {v4, v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1500(Lcom/htc/home/personalize/opensense/FullScreenView;II)I

    move-result v5

    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;
    invoke-static {v4}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1600(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/widget/EaseOutCubic;

    move-result-object v6

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V

    .line 432
    .end local v9           #dx:I
    :goto_2
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 448
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-nez v0, :cond_4

    .line 449
    const-string v0, "FullScreen"

    const-string v1, "full screen ImageViewTouch set is null, is released called before layout?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    .restart local v9       #dx:I
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    goto :goto_1

    .line 429
    .end local v9           #dx:I
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollTo(II)V

    goto :goto_2

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$5;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v7

    .local v7, arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v12, :cond_0

    aget-object v11, v7, v10

    .line 461
    .local v11, iv:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    if-nez v11, :cond_5

    .line 456
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 505
    :cond_5
    iget-object v0, v11, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 506
    iget-object v0, v11, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v1, v11, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 507
    invoke-virtual {v11}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->updateImageMatrix()V

    goto :goto_4
.end method
