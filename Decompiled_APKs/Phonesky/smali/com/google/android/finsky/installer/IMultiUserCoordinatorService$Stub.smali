.class public abstract Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;
.super Landroid/os/Binder;
.source "IMultiUserCoordinatorService.java"

# interfaces
.implements Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;->registerListener(Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;
    :sswitch_2
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;->acquirePackage(Ljava/lang/String;)Z

    move-result v1

    .line 64
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 70
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;->releasePackage(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;->releaseAllPackages()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
