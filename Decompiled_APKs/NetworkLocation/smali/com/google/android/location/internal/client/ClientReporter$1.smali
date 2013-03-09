.class Lcom/google/android/location/internal/client/ClientReporter$1;
.super Landroid/os/Handler;
.source "ClientReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/internal/client/ClientReporter;-><init>(Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/internal/client/ClientReporter;

.field final synthetic val$listener:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/client/ClientReporter;Landroid/os/Looper;Landroid/location/LocationListener;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/location/internal/client/ClientReporter$1;->this$0:Lcom/google/android/location/internal/client/ClientReporter;

    iput-object p3, p0, Lcom/google/android/location/internal/client/ClientReporter$1;->val$listener:Landroid/location/LocationListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 39
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 42
    .local v0, location:Landroid/location/Location;
    iget-object v1, p0, Lcom/google/android/location/internal/client/ClientReporter$1;->val$listener:Landroid/location/LocationListener;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 43
    const-string v1, "NetworkLocationProvider"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "ClientReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reported location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    .end local v0           #location:Landroid/location/Location;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/location/internal/client/ClientReporter$1;->val$listener:Landroid/location/LocationListener;

    const-string v3, "network"

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v1}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/location/internal/client/ClientReporter$1;->val$listener:Landroid/location/LocationListener;

    const-string v2, "network"

    invoke-interface {v1, v2}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/location/internal/client/ClientReporter$1;->val$listener:Landroid/location/LocationListener;

    const-string v2, "network"

    invoke-interface {v1, v2}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
