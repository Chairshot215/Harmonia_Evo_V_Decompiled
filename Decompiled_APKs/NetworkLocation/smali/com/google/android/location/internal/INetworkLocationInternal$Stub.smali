.class public abstract Lcom/google/android/location/internal/INetworkLocationInternal$Stub;
.super Landroid/os/Binder;
.source "INetworkLocationInternal.java"

# interfaces
.implements Lcom/google/android/location/internal/INetworkLocationInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/INetworkLocationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/INetworkLocationInternal$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/location/internal/INetworkLocationInternal;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/location/internal/INetworkLocationInternal;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/google/android/location/internal/INetworkLocationInternal;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/android/location/internal/INetworkLocationInternal$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v5, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/location/internal/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/location/internal/ILocationListener;

    move-result-object v1

    .line 58
    .local v1, _arg1:Lcom/google/android/location/internal/ILocationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->requestLocationUpdates(ILcom/google/android/location/internal/ILocationListener;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/google/android/location/internal/ILocationListener;
    .end local v2           #_arg2:I
    :sswitch_2
    const-string v5, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/location/internal/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/location/internal/ILocationListener;

    move-result-object v0

    .line 68
    .local v0, _arg0:Lcom/google/android/location/internal/ILocationListener;
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->cancelLocationUpdates(Lcom/google/android/location/internal/ILocationListener;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Lcom/google/android/location/internal/ILocationListener;
    :sswitch_3
    const-string v5, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    sget-object v5, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 82
    .local v0, _arg0:Landroid/location/Location;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->getRmiInfo(Landroid/location/Location;)[B

    move-result-object v3

    .line 83
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Landroid/location/Location;
    .end local v3           #_result:[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Location;
    goto :goto_1

    .line 89
    .end local v0           #_arg0:Landroid/location/Location;
    :sswitch_4
    const-string v5, "com.google.android.location.internal.INetworkLocationInternal"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->getDebugDump()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
