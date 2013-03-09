.class Lcom/htc/android/locationpicker/LocationMapPicker$5;
.super Ljava/lang/Object;
.source "LocationMapPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;->initBottomPanel()V
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
    .line 506
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 508
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$400(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 510
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-static {v1}, Lcom/htc/android/locationpicker/PickerUtils;->getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/PickerUtils;->stopTitleSearch()V

    .line 512
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 513
    .local v0, returnIntent:Landroid/content/Intent;
    const-string v1, "RETURN_LOCATION"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 514
    const-string v1, "RETURN_LATITUDE"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$600(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 515
    const-string v1, "RETURN_LONGITUDE"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$700(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 516
    const-string v1, "RETURN_LATITUDE_TEXT"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLatitude:D
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$600(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v1, "RETURN_LONGITUDE_TEXT"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnLongitude:D
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$700(Lcom/htc/android/locationpicker/LocationMapPicker;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "RETURN_ZOOM"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mReturnZoom:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$800(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$900(Lcom/htc/android/locationpicker/LocationMapPicker;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "RETURN_ADDRESS"

    iget-object v2, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$900(Lcom/htc/android/locationpicker/LocationMapPicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->setResult(ILandroid/content/Intent;)V

    .line 525
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->disableMyLocation()V

    .line 526
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$5;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-virtual {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->finish()V

    .line 527
    return-void
.end method
