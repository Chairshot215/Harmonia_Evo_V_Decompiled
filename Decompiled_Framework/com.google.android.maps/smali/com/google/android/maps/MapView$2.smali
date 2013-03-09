.class Lcom/google/android/maps/MapView$2;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


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

    iput-object p1, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$600(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/ZoomHelper;->updateZoom(FFF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$600(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/ZoomHelper;->beginZoom(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapView$2;->this$0:Lcom/google/android/maps/MapView;

    #getter for: Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;
    invoke-static {v0}, Lcom/google/android/maps/MapView;->access$600(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/ZoomHelper;->endZoom()V

    return-void
.end method
