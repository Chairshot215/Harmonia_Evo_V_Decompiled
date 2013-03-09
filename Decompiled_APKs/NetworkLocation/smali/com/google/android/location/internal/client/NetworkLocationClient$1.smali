.class Lcom/google/android/location/internal/client/NetworkLocationClient$1;
.super Lcom/google/android/location/internal/ILocationListener$Stub;
.source "NetworkLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/client/NetworkLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/client/NetworkLocationClient;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$1;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    invoke-direct {p0}, Lcom/google/android/location/internal/ILocationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$1;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->clientReporter:Lcom/google/android/location/internal/client/ClientReporter;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/ClientReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/client/ClientReporter;->onLocationChanged(Landroid/location/Location;)V

    .line 123
    return-void
.end method

.method public onProviderDisabled()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 140
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$1;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->clientReporter:Lcom/google/android/location/internal/client/ClientReporter;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/ClientReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/internal/client/ClientReporter;->onProviderDisabled()V

    .line 141
    return-void
.end method

.method public onProviderEnabled()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 134
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$1;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->clientReporter:Lcom/google/android/location/internal/client/ClientReporter;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/ClientReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/internal/client/ClientReporter;->onProviderEnabled()V

    .line 135
    return-void
.end method

.method public onStatusChanged(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 128
    iget-object v0, p0, Lcom/google/android/location/internal/client/NetworkLocationClient$1;->this$0:Lcom/google/android/location/internal/client/NetworkLocationClient;

    #getter for: Lcom/google/android/location/internal/client/NetworkLocationClient;->clientReporter:Lcom/google/android/location/internal/client/ClientReporter;
    invoke-static {v0}, Lcom/google/android/location/internal/client/NetworkLocationClient;->access$100(Lcom/google/android/location/internal/client/NetworkLocationClient;)Lcom/google/android/location/internal/client/ClientReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/internal/client/ClientReporter;->onStatusChanged(ILandroid/os/Bundle;)V

    .line 129
    return-void
.end method
