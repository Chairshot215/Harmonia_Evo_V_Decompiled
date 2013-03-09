.class Lcom/htc/android/locationpicker/LocationMapPicker$1;
.super Ljava/lang/Object;
.source "LocationMapPicker.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;->onCreate(Landroid/os/Bundle;)V
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
    .line 170
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$1;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 187
    return-void
.end method

.method public onZoom(Z)V
    .locals 3
    .parameter "zoomIn"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$1;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapController;->zoomIn()Z

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$1;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapController;->zoomOut()Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "LocationMapPicker"

    const-string v2, "Googloe MapView out of memory!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method
