.class public abstract Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.lockscreen.idlescreen.remote.IRemoteService"

.field static final TRANSACTION_getData:I = 0x4

.field static final TRANSACTION_getInt:I = 0x3

.field static final TRANSACTION_getString:I = 0x2

.field static final TRANSACTION_performAction:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;
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
    const-string v1, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 57
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;->performAction(ILandroid/os/Bundle;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_1

    .line 63
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;->getInt(I)I

    move-result v2

    .line 77
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_4
    const-string v4, "com.htc.lockscreen.idlescreen.remote.IRemoteService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 93
    .restart local v1       #_arg1:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;->getData(ILandroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object v2

    .line 94
    .local v2, _result:[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 91
    .end local v1           #_arg1:Landroid/os/Bundle;
    .end local v2           #_result:[Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_2

    .line 38
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
