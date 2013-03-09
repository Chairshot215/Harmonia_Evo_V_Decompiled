.class public abstract Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;
.super Landroid/os/Binder;
.source "ISyncMLSubscribeService.java"

# interfaces
.implements Lcom/android/syncml/service/subscription/ISyncMLSubscribeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/service/subscription/ISyncMLSubscribeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.syncml.service.subscription.ISyncMLSubscribeService"

.field static final TRANSACTION_getSubscribeStatus:I = 0x3

.field static final TRANSACTION_getTermsAndConditions:I = 0x5

.field static final TRANSACTION_initiateSubscribe:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p0, p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/subscription/ISyncMLSubscribeService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;

    move-result-object v0

    .line 53
    .local v0, _arg0:Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;->registerCallback(Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
    :sswitch_2
    const-string v3, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;->unregisterCallback(Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
    :sswitch_3
    const-string v3, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;->getSubscribeStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;->initiateSubscribe(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.android.syncml.service.subscription.ISyncMLSubscribeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeService$Stub;->getTermsAndConditions(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
