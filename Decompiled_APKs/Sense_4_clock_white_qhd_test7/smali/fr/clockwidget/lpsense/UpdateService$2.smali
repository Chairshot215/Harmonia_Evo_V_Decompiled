.class Lfr/clockwidget/lpsense/UpdateService$2;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/UpdateService;
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
    iput-object p1, p0, Lfr/clockwidget/lpsense/UpdateService$2;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService$2;->this$0:Lfr/clockwidget/lpsense/UpdateService;

    #calls: Lfr/clockwidget/lpsense/UpdateService;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lfr/clockwidget/lpsense/UpdateService;->access$3(Lfr/clockwidget/lpsense/UpdateService;Landroid/location/Location;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 248
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 252
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 256
    return-void
.end method
