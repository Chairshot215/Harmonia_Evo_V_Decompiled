.class Lcom/google/android/maps/MapView$1;
.super Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView;->setup(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    invoke-direct {p0}, Lcom/google/android/maps/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$000(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$000(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/16 v6, 0x320

    const/16 v1, 0x190

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$000(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #setter for: Lcom/google/android/maps/MapView;->mLastFlingX:I
    invoke-static {v0, v1}, Lcom/google/android/maps/MapView;->access$402(Lcom/google/android/maps/MapView;I)I

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #setter for: Lcom/google/android/maps/MapView;->mLastFlingY:I
    invoke-static {v0, v1}, Lcom/google/android/maps/MapView;->access$502(Lcom/google/android/maps/MapView;I)I

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$000(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mLastFlingX:I
    invoke-static {v1}, Lcom/google/android/maps/MapView;->access$400(Lcom/google/android/maps/MapView;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mLastFlingX:I
    invoke-static {v2}, Lcom/google/android/maps/MapView;->access$400(Lcom/google/android/maps/MapView;)I

    move-result v2

    neg-float v3, p3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    neg-float v4, p4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    return v5
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    iget-object v0, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$100(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/MapController;

    move-result-object v0

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;
    invoke-static {v1}, Lcom/google/android/maps/MapView;->access$200(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/PixelConverter;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/PixelConverter;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;
    invoke-static {v1}, Lcom/google/android/maps/MapView;->access$300(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/OverlayBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MapView$1;->this$0:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/OverlayBundle;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v1

    return v1
.end method
