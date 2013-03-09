.class Lcom/htc/android/locationpicker/LocationAgent$2;
.super Ljava/lang/Object;
.source "LocationAgent.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field gstatus:Landroid/location/GpsStatus;

.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationAgent;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationAgent;)V
    .locals 1
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->gstatus:Landroid/location/GpsStatus;

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 6
    .parameter "event"

    .prologue
    .line 401
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 402
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocation:Landroid/location/Location;
    invoke-static {v4}, Lcom/htc/android/locationpicker/LocationAgent;->access$200(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_0

    .line 404
    const-string v4, "LocationAgent"

    const-string v5, "GpsStatusListener.onFirstFix"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v4}, Lcom/htc/android/locationpicker/LocationAgent;->access$600(Lcom/htc/android/locationpicker/LocationAgent;)Landroid/location/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->gstatus:Landroid/location/GpsStatus;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->gstatus:Landroid/location/GpsStatus;

    .line 411
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #getter for: Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I
    invoke-static {v4}, Lcom/htc/android/locationpicker/LocationAgent;->access$100(Lcom/htc/android/locationpicker/LocationAgent;)I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, db:F
    const/4 v0, 0x0

    .line 415
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->gstatus:Landroid/location/GpsStatus;

    invoke-virtual {v4}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 416
    .local v3, statellite:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v4

    add-float/2addr v1, v4

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    .end local v3           #statellite:Landroid/location/GpsSatellite;
    :cond_2
    if-lez v0, :cond_3

    .line 420
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    int-to-float v5, v0

    div-float v5, v1, v5

    #setter for: Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F
    invoke-static {v4, v5}, Lcom/htc/android/locationpicker/LocationAgent;->access$702(Lcom/htc/android/locationpicker/LocationAgent;F)F

    goto :goto_0

    .line 423
    :cond_3
    iget-object v4, p0, Lcom/htc/android/locationpicker/LocationAgent$2;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    const/4 v5, 0x0

    #setter for: Lcom/htc/android/locationpicker/LocationAgent;->mGpsSignal:F
    invoke-static {v4, v5}, Lcom/htc/android/locationpicker/LocationAgent;->access$702(Lcom/htc/android/locationpicker/LocationAgent;F)F

    goto :goto_0
.end method
