.class Lcom/htc/opensense/widget/FullScreenView$5;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v13

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->computeCurrScreenSize()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$1400(Lcom/htc/opensense/widget/FullScreenView;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->measureDrmText(Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1500(Lcom/htc/opensense/widget/FullScreenView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z
    invoke-static {v0, v13}, Lcom/htc/opensense/widget/FullScreenView;->access$1602(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    iget v1, v1, Lcom/htc/opensense/widget/FullScreenView;->mNewOrientation:I

    iput v1, v0, Lcom/htc/opensense/widget/FullScreenView;->mLastOrientation:I

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getCurX()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getFinalX()I

    move-result v1

    sub-int v9, v0, v1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->abortAnimation()V

    if-gez v9, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v9, v0, 0x2

    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v1

    add-int/2addr v1, v9

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v5}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v5

    aget-object v5, v5, v13

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v6

    aget-object v6, v6, v13

    invoke-virtual {v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    #calls: Lcom/htc/opensense/widget/FullScreenView;->getScrollDuration(II)I
    invoke-static {v4, v5, v6}, Lcom/htc/opensense/widget/FullScreenView;->access$1700(Lcom/htc/opensense/widget/FullScreenView;II)I

    move-result v5

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;
    invoke-static {v4}, Lcom/htc/opensense/widget/FullScreenView;->access$1800(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/widget/EaseOutCubic;

    move-result-object v6

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V

    :goto_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "FullScreen"

    const-string v1, "full screen ImageViewTouch set is null, is released called before layout?"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v7

    array-length v12, v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_6

    aget-object v11, v7, v10

    if-nez v11, :cond_5

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v1, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setBaseMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    invoke-virtual {v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->updateImageMatrix()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2000(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$5;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2000(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;->onLayoutComplete()V

    goto/16 :goto_0
.end method
