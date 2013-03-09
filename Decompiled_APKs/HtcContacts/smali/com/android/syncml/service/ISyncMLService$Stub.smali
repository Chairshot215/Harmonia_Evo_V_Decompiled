.class public abstract Lcom/android/syncml/service/ISyncMLService$Stub;
.super Landroid/os/Binder;
.source "ISyncMLService.java"

# interfaces
.implements Lcom/android/syncml/service/ISyncMLService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/service/ISyncMLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/service/ISyncMLService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.syncml.service.ISyncMLService"

.field static final TRANSACTION_cancelSync:I = 0x4

.field static final TRANSACTION_isAABEnabled:I = 0xa

.field static final TRANSACTION_isIdle:I = 0x5

.field static final TRANSACTION_isSyncedWithTheServer:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setAABEnabled:I = 0x9

.field static final TRANSACTION_setAccountSyncAutomatically:I = 0x6

.field static final TRANSACTION_setContactsIsSyncable:I = 0x8

.field static final TRANSACTION_startSync:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p0, p0, v0}, Lcom/android/syncml/service/ISyncMLService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;
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
    const-string v1, "com.android.syncml.service.ISyncMLService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/syncml/service/ISyncMLService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/syncml/service/ISyncMLService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/syncml/service/ISyncMLService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/syncml/service/ISyncMLService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLServiceCallback;

    move-result-object v0

    .line 53
    .local v0, _arg0:Lcom/android/syncml/service/ISyncMLServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/ISyncMLService$Stub;->registerCallback(Lcom/android/syncml/service/ISyncMLServiceCallback;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Lcom/android/syncml/service/ISyncMLServiceCallback;
    :sswitch_2
    const-string v3, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLServiceCallback;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Lcom/android/syncml/service/ISyncMLServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/ISyncMLService$Stub;->unregisterCallback(Lcom/android/syncml/service/ISyncMLServiceCallback;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Lcom/android/syncml/service/ISyncMLServiceCallback;
    :sswitch_3
    const-string v3, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/syncml/service/ISyncMLService$Stub;->startSync()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v3, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/syncml/service/ISyncMLService$Stub;->cancelSync()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v5, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/syncml/service/ISyncMLService$Stub;->isIdle()Z

    move-result v2

    .line 84
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 94
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/syncml/service/ISyncMLService$Stub;->setAccountSyncAutomatically(ZLjava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_1
    move v0, v3

    .line 92
    goto :goto_1

    .line 101
    :sswitch_7
    const-string v5, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/syncml/service/ISyncMLService$Stub;->isSyncedWithTheServer()Z

    move-result v2

    .line 103
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v2           #_result:Z
    :sswitch_8
    const-string v5, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 112
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/ISyncMLService$Stub;->setContactsIsSyncable(Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v3

    .line 111
    goto :goto_2

    .line 118
    :sswitch_9
    const-string v5, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 121
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/syncml/service/ISyncMLService$Stub;->setAABEnabled(Z)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v3

    .line 120
    goto :goto_3

    .line 127
    :sswitch_a
    const-string v5, "com.android.syncml.service.ISyncMLService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/syncml/service/ISyncMLService$Stub;->isAABEnabled()Z

    move-result v2

    .line 129
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
