.class Lcom/google/android/location/internal/client/ClientReporter;
.super Ljava/lang/Object;
.source "ClientReporter.java"


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/location/internal/client/ClientReporter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/location/internal/client/ClientReporter$1;-><init>(Lcom/google/android/location/internal/client/ClientReporter;Landroid/os/Looper;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/location/internal/client/ClientReporter;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/location/internal/client/ClientReporter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    return-void
.end method

.method public onProviderDisabled()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/internal/client/ClientReporter;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method public onProviderEnabled()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/location/internal/client/ClientReporter;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    return-void
.end method

.method public onStatusChanged(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/location/internal/client/ClientReporter;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    return-void
.end method
