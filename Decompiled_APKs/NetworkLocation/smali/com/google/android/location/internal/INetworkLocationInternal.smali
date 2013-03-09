.class public interface abstract Lcom/google/android/location/internal/INetworkLocationInternal;
.super Ljava/lang/Object;
.source "INetworkLocationInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/INetworkLocationInternal$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelLocationUpdates(Lcom/google/android/location/internal/ILocationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugDump()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRmiInfo(Landroid/location/Location;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestLocationUpdates(ILcom/google/android/location/internal/ILocationListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
