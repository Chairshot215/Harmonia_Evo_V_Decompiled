.class Lcom/google/android/location/internal/server/Listeners;
.super Ljava/lang/Object;
.source "Listeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/server/Listeners$Receiver;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/location/internal/server/Listeners$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private minPeriodSecs:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/Listeners;->listeners:Ljava/util/HashMap;

    .line 25
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/Listeners;->minPeriodSecs:I

    .line 27
    return-void
.end method

.method private listenersChanged()V
    .locals 6

    .prologue
    .line 117
    const v3, 0x7fffffff

    iput v3, p0, Lcom/google/android/location/internal/server/Listeners;->minPeriodSecs:I

    .line 118
    iget-object v3, p0, Lcom/google/android/location/internal/server/Listeners;->listeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/location/internal/server/Listeners$Receiver;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/internal/server/Listeners$Receiver;

    .line 120
    .local v2, receiver:Lcom/google/android/location/internal/server/Listeners$Receiver;
    const-string v3, "androidNetworkLocationListeners"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Still have listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/location/internal/server/Listeners$Receiver;->listener:Lcom/google/android/location/internal/ILocationListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v3, p0, Lcom/google/android/location/internal/server/Listeners;->minPeriodSecs:I

    iget v4, v2, Lcom/google/android/location/internal/server/Listeners$Receiver;->periodSecs:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/location/internal/server/Listeners;->minPeriodSecs:I

    goto :goto_0

    .line 123
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/location/internal/server/Listeners$Receiver;>;"
    .end local v2           #receiver:Lcom/google/android/location/internal/server/Listeners$Receiver;
    :cond_0
    return-void
.end method


# virtual methods
.method add(Lcom/google/android/location/internal/ILocationListener;I)V
    .locals 3
    .parameter "locationListener"
    .parameter "periodSecs"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/location/internal/server/Listeners;->listeners:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/location/internal/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/internal/server/Listeners$Receiver;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/location/internal/server/Listeners$Receiver;-><init>(Lcom/google/android/location/internal/server/Listeners;Lcom/google/android/location/internal/ILocationListener;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Lcom/google/android/location/internal/server/Listeners;->listenersChanged()V

    .line 53
    return-void
.end method

.method getMinPeriodSecs()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/location/internal/server/Listeners;->minPeriodSecs:I

    return v0
.end method

.method remove(Lcom/google/android/location/internal/ILocationListener;)V
    .locals 2
    .parameter "locationListener"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/internal/server/Listeners;->listeners:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/location/internal/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lcom/google/android/location/internal/server/Listeners;->listenersChanged()V

    .line 61
    return-void
.end method

.method reportEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, dropped:Z
    iget-object v4, p0, Lcom/google/android/location/internal/server/Listeners;->listeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/location/internal/server/Listeners$Receiver;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/internal/server/Listeners$Receiver;

    .line 100
    .local v3, receiver:Lcom/google/android/location/internal/server/Listeners$Receiver;
    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    iget-object v4, v3, Lcom/google/android/location/internal/server/Listeners$Receiver;->listener:Lcom/google/android/location/internal/ILocationListener;

    invoke-interface {v4}, Lcom/google/android/location/internal/ILocationListener;->onProviderEnabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "androidNetworkLocationListeners"

    const-string v5, "dropping listener"

    invoke-static {v4, v5}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v4, v3, Lcom/google/android/location/internal/server/Listeners$Receiver;->listener:Lcom/google/android/location/internal/ILocationListener;

    invoke-interface {v4}, Lcom/google/android/location/internal/ILocationListener;->onProviderDisabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    .end local v3           #receiver:Lcom/google/android/location/internal/server/Listeners$Receiver;
    :cond_1
    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/google/android/location/internal/server/Listeners;->listenersChanged()V

    .line 114
    :cond_2
    return-void
.end method

.method reportLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, dropped:Z
    iget-object v4, p0, Lcom/google/android/location/internal/server/Listeners;->listeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/google/android/location/internal/server/Listeners$Receiver;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/internal/server/Listeners$Receiver;

    .line 75
    .local v3, receiver:Lcom/google/android/location/internal/server/Listeners$Receiver;
    :try_start_0
    iget-object v4, v3, Lcom/google/android/location/internal/server/Listeners$Receiver;->listener:Lcom/google/android/location/internal/ILocationListener;

    invoke-interface {v4, p1}, Lcom/google/android/location/internal/ILocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "androidNetworkLocationListeners"

    const-string v5, "dropping listener"

    invoke-static {v4, v5}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #receiver:Lcom/google/android/location/internal/server/Listeners$Receiver;
    :cond_0
    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/google/android/location/internal/server/Listeners;->listenersChanged()V

    .line 85
    :cond_1
    return-void
.end method
