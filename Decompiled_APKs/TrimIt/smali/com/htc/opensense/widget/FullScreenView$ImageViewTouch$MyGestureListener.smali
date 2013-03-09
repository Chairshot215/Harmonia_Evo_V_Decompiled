.class Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Lcom/htc/opensense/widget/Gesture$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1655
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V

    return-void
.end method


# virtual methods
.method public onBothFingerUp(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoomBehavior"

    .prologue
    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/htc/opensense/widget/Gesture$ClickBehavior;)Z
    .locals 1
    .parameter "click"

    .prologue
    .line 1708
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;)Z
    .locals 4
    .parameter "doubleTap"

    .prologue
    const/4 v0, 0x0

    .line 1660
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I
    invoke-static {v1, v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3902(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;I)I

    .line 1661
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I
    invoke-static {v1, v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$4002(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;I)I

    .line 1663
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->getY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->canDoubleClickZoom(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1670
    :goto_0
    return v0

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    invoke-virtual {p1}, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;->getY()F

    move-result v2

    #calls: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->onDoubleClick(FF)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$4200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;FF)V

    .line 1667
    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;->this$0:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v0

    #calls: Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$3100(Lcom/htc/opensense/widget/FullScreenView;)V

    .line 1670
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDown(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z
    .locals 1
    .parameter "none"

    .prologue
    .line 1675
    const/4 v0, 0x0

    return v0
.end method

.method public onDrag(Lcom/htc/opensense/widget/Gesture$DragBehavior;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 1680
    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerDown(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1685
    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerUp(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(Lcom/htc/opensense/widget/Gesture$DefaultBehavior;)Z
    .locals 1
    .parameter "none"

    .prologue
    .line 1695
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomIn(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1700
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomOut(Lcom/htc/opensense/widget/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 1704
    const/4 v0, 0x0

    return v0
.end method
