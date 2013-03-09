.class Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Lcom/htc/home/personalize/opensense/Gesture$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1552
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)V

    return-void
.end method


# virtual methods
.method public onBothFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoomBehavior"

    .prologue
    .line 1609
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;)Z
    .locals 1
    .parameter "click"

    .prologue
    .line 1605
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;)Z
    .locals 4
    .parameter "doubleTap"

    .prologue
    const/4 v0, 0x0

    .line 1557
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I
    invoke-static {v1, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3602(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;I)I

    .line 1558
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I
    invoke-static {v1, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3702(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;I)I

    .line 1560
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->getY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;->canDoubleClickZoom(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1567
    :goto_0
    return v0

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {p1}, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;->getY()F

    move-result v2

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->onDoubleClick(FF)V
    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3900(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;FF)V

    .line 1564
    sget-boolean v0, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v0, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;

    move-result-object v0

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->showOnScreenControls()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2700(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 1567
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDown(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z
    .locals 1
    .parameter "none"

    .prologue
    .line 1572
    const/4 v0, 0x0

    return v0
.end method

.method public onDrag(Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerDown(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1582
    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1587
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z
    .locals 1
    .parameter "none"

    .prologue
    .line 1592
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomIn(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomOut(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1601
    const/4 v0, 0x0

    return v0
.end method
