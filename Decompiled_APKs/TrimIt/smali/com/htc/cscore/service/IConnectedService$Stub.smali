.class public abstract Lcom/htc/cscore/service/IConnectedService$Stub;
.super Landroid/os/Binder;
.source "IConnectedService.java"

# interfaces
.implements Lcom/htc/cscore/service/IConnectedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/service/IConnectedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/service/IConnectedService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.cscore.service.IConnectedService"

.field static final TRANSACTION_getAccountID:I = 0x4

.field static final TRANSACTION_getDeviceID:I = 0x3

.field static final TRANSACTION_getPassword:I = 0x5

.field static final TRANSACTION_getServerName:I = 0x2

.field static final TRANSACTION_getServerTime:I = 0x1

.field static final TRANSACTION_remoteLock_getCurrentRetryTimes:I = 0xc

.field static final TRANSACTION_remoteLock_getMaxRetryTimes:I = 0xb

.field static final TRANSACTION_remoteLock_getMsg:I = 0xa

.field static final TRANSACTION_remoteLock_getNumber:I = 0x9

.field static final TRANSACTION_remoteLock_getUnlockableTime:I = 0xd

.field static final TRANSACTION_remoteLock_isLock:I = 0x6

.field static final TRANSACTION_remoteLock_isUnlockable:I = 0x7

.field static final TRANSACTION_remoteLock_unlock:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/cscore/service/IConnectedService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/cscore/service/IConnectedService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.cscore.service.IConnectedService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/cscore/service/IConnectedService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/cscore/service/IConnectedService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/cscore/service/IConnectedService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/cscore/service/IConnectedService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->getServerTime()J

    move-result-wide v1

    .line 49
    .local v1, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 55
    .end local v1           #_result:J
    :sswitch_2
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->getAccountID()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_isLock()Z

    move-result v1

    .line 89
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v1           #_result:Z
    :sswitch_7
    const-string v5, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_isUnlockable()Z

    move-result v1

    .line 97
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v1           #_result:Z
    :sswitch_8
    const-string v5, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_unlock(Ljava/lang/String;)Z

    move-result v1

    .line 107
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_9
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_getNumber()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_getMsg()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_getMaxRetryTimes()I

    move-result v1

    .line 131
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v1           #_result:I
    :sswitch_c
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_getCurrentRetryTimes()I

    move-result v1

    .line 139
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v1           #_result:I
    :sswitch_d
    const-string v3, "com.htc.cscore.service.IConnectedService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/cscore/service/IConnectedService$Stub;->remoteLock_getUnlockableTime()J

    move-result-wide v1

    .line 147
    .local v1, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 38
    nop

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
