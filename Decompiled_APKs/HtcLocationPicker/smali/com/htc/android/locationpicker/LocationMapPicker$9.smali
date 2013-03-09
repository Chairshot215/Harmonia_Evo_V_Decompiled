.class Lcom/htc/android/locationpicker/LocationMapPicker$9;
.super Ljava/lang/Object;
.source "LocationMapPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 770
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->changeLocationToMapCenter()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1800(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 771
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$400(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 773
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->showHintDialog(FF)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2000(Lcom/htc/android/locationpicker/LocationMapPicker;FF)V

    .line 775
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_SCREEN_MODE:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2100(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->switchIconMode(I)V
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2200(Lcom/htc/android/locationpicker/LocationMapPicker;I)V

    .line 776
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 777
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->invalidate()V

    .line 780
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$9;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->getAndUpdateAddress()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1300(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 781
    return-void
.end method
