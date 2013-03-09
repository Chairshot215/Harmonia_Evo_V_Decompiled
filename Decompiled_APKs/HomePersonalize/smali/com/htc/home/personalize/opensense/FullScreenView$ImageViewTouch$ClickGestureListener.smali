.class Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v0

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v1

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v0

    if-nez v0, :cond_3

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    .line 1465
    .local v9, m:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v1, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v6, v0

    .line 1466
    .local v6, maxX:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v1, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 1468
    .local v8, maxY:I
    const/4 v7, 0x0

    .local v7, minY:I
    move v5, v7

    .line 1470
    .local v5, minX:I
    if-gez v6, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v0, v0

    neg-int v6, v0

    .line 1473
    move v5, v6

    .line 1475
    :cond_1
    if-gez v8, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v0

    float-to-int v0, v0

    neg-int v8, v0

    .line 1478
    move v7, v8

    .line 1481
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3400(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v1, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v2, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    float-to-int v3, p3

    neg-int v3, v3

    float-to-int v4, p4

    neg-int v4, v4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->startScroll(IIIIIIII)V

    .line 1482
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->invalidate()V

    .line 1483
    const/4 v0, 0x1

    .line 1485
    .end local v5           #minX:I
    .end local v6           #maxX:I
    .end local v7           #minY:I
    .end local v8           #maxY:I
    .end local v9           #m:Landroid/graphics/Matrix;
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mItemClickListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3300(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1450
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mItemClickListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3300(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v3

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;->onItemClick(Landroid/view/View;Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
