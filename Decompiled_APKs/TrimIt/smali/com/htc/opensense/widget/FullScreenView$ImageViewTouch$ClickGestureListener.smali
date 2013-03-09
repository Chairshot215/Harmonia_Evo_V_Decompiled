.class Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1558
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iget-object v1, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 1559
    const/4 v1, 0x0

    .line 1587
    :goto_0
    return v1

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v12

    .line 1562
    .local v12, mScreenW:I
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v11

    .line 1563
    .local v11, mScreenH:I
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v1

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v2

    add-int/2addr v2, v12

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v1

    if-nez v1, :cond_4

    .line 1565
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 1567
    .local v10, m:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iget-object v1, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v2, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    int-to-float v2, v12

    sub-float/2addr v1, v2

    float-to-int v7, v1

    .line 1568
    .local v7, maxX:I
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iget-object v1, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v2, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    int-to-float v2, v11

    sub-float/2addr v1, v2

    float-to-int v9, v1

    .line 1570
    .local v9, maxY:I
    const/4 v8, 0x0

    .local v8, minY:I
    move v6, v8

    .line 1572
    .local v6, minX:I
    if-gez v7, :cond_2

    .line 1574
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v1, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    float-to-int v1, v1

    neg-int v7, v1

    .line 1575
    move v6, v7

    .line 1577
    :cond_2
    if-gez v9, :cond_3

    .line 1579
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v1, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    float-to-int v1, v1

    neg-int v9, v1

    .line 1580
    move v8, v9

    .line 1583
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v2, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v3, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    move/from16 v0, p3

    float-to-int v4, v0

    neg-int v4, v4

    move/from16 v0, p4

    float-to-int v5, v0

    neg-int v5, v5

    invoke-virtual/range {v1 .. v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->startScroll(IIIIIIII)V

    .line 1584
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    .line 1585
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1587
    .end local v6           #minX:I
    .end local v7           #maxX:I
    .end local v8           #minY:I
    .end local v9           #maxY:I
    .end local v10           #m:Landroid/graphics/Matrix;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 1538
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$3600(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1547
    :goto_0
    return v0

    .line 1540
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    const-string v1, "FullScreen"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onItemClick disable click"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z
    invoke-static {v1, v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3702(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_0

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$3600(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;->onItemClick(Landroid/view/View;Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
