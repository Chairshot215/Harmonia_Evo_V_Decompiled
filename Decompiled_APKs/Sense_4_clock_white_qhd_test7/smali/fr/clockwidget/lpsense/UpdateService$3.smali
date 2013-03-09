.class Lfr/clockwidget/lpsense/UpdateService$3;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/clockwidget/lpsense/UpdateService;->registerLocationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/UpdateService;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 265
    invoke-static {v8}, Lfr/clockwidget/lpsense/UpdateService;->access$4(Z)V

    .line 266
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useGPS()Z

    move-result v7

    .line 268
    .local v7, useGPS:Z
    :try_start_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #getter for: Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$5(Lfr/clockwidget/lpsense/UpdateService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #getter for: Lfr/clockwidget/lpsense/UpdateService;->locationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lfr/clockwidget/lpsense/UpdateService;->access$6(Lfr/clockwidget/lpsense/UpdateService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 269
    if-eqz v7, :cond_0

    .line 270
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #getter for: Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$5(Lfr/clockwidget/lpsense/UpdateService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #getter for: Lfr/clockwidget/lpsense/UpdateService;->locationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lfr/clockwidget/lpsense/UpdateService;->access$6(Lfr/clockwidget/lpsense/UpdateService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #calls: Lfr/clockwidget/lpsense/UpdateService;->waitForLocationUpdate()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$7(Lfr/clockwidget/lpsense/UpdateService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 274
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #calls: Lfr/clockwidget/lpsense/UpdateService;->useLastLocation()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$8(Lfr/clockwidget/lpsense/UpdateService;)V

    .line 275
    invoke-static {v8}, Lfr/clockwidget/lpsense/UpdateService;->access$9(Z)V

    .line 276
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$3;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #calls: Lfr/clockwidget/lpsense/UpdateService;->removeLocationListener()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/UpdateService;->access$10(Lfr/clockwidget/lpsense/UpdateService;)V

    goto :goto_0
.end method
