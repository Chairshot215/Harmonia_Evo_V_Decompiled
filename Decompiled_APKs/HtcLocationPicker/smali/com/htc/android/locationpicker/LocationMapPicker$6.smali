.class Lcom/htc/android/locationpicker/LocationMapPicker$6;
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
    .line 532
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$6;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$6;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->setResult(ILandroid/content/Intent;)V

    .line 535
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$6;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMyLocationOverlay:Lcom/htc/android/locationpicker/MyLocationOverlayEx;
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/MyLocationOverlayEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/MyLocationOverlayEx;->disableMyLocation()V

    .line 536
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationMapPicker$6;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    invoke-virtual {v0}, Lcom/htc/android/locationpicker/LocationMapPicker;->finish()V

    .line 537
    return-void
.end method
