.class public abstract Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISyncMLSubscribeServiceCallback.java"

# interfaces
.implements Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

.field static final TRANSACTION_onSubscribeInitializationFinished:I = 0x2

.field static final TRANSACTION_onSubscribeStatusReceived:I = 0x1

.field static final TRANSACTION_onTermsAndConditionsReceived:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;
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
    const-string v1, "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v2, "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 55
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;->onSubscribeStatusReceived(Z)V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Z
    :sswitch_2
    const-string v2, "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 63
    .restart local v0       #_arg0:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;->onSubscribeInitializationFinished(Z)V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Z
    :sswitch_3
    const-string v2, "com.android.syncml.service.subscription.ISyncMLSubscribeServiceCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/subscription/ISyncMLSubscribeServiceCallback$Stub;->onTermsAndConditionsReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
