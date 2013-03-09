.class Lcom/htc/android/locationpicker/LocationMapPicker$4;
.super Ljava/lang/Object;
.source "LocationMapPicker.java"

# interfaces
.implements Lcom/htc/android/locationpicker/MyLocationOverlayEx$ClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;->initLocation()V
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
    .line 440
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsFix(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 443
    const-string v0, "LocationMapPicker"

    const-string v1, "onGpsFix"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$100(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$102(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z

    .line 447
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->moveToMyLocation()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$200(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onNetworkFix(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 453
    const-string v0, "LocationMapPicker"

    const-string v1, "onNetworkFix"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByNetwork:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$300(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByNetwork:Z
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$302(Lcom/htc/android/locationpicker/LocationMapPicker;Z)Z

    .line 457
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isFixByGps:Z
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$100(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$4;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->moveToMyLocation()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$200(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 461
    :cond_0
    return-void
.end method
