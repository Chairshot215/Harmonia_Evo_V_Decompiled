.class public abstract Lcom/htc/dcs/DCSServiceComponent$Stub;
.super Landroid/os/Binder;
.source "DCSServiceComponent.java"

# interfaces
.implements Lcom/htc/dcs/DCSServiceComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dcs/DCSServiceComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dcs.DCSServiceComponent"

.field static final TRANSACTION_fetch:I = 0x2

.field static final TRANSACTION_fetchData:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.dcs.DCSServiceComponent"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dcs/DCSServiceComponent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dcs/DCSServiceComponent;
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
    const-string v1, "com.htc.dcs.DCSServiceComponent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dcs/DCSServiceComponent;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/dcs/DCSServiceComponent;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.htc.dcs.DCSServiceComponent"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.htc.dcs.DCSServiceComponent"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    .line 53
    .local v3, _arg1:[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, _arg2:I
    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/dcs/DCSServiceComponent$Stub;->fetchData(I[Landroid/os/Bundle;I)[Landroid/os/Bundle;

    move-result-object v6

    .line 55
    .local v6, _result:[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v7

    .line 57
    goto :goto_0

    .line 61
    .end local v1           #_arg0:I
    .end local v3           #_arg1:[Landroid/os/Bundle;
    .end local v4           #_arg2:I
    .end local v6           #_result:[Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.htc.dcs.DCSServiceComponent"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 65
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .local v3, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 74
    .local v4, _arg2:Landroid/os/Bundle;
    :goto_1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Bundle;

    .local v5, _arg3:[Landroid/os/Bundle;
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/htc/dcs/DCSServiceComponent$Stub;->fetch(JILandroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;

    move-result-object v6

    .line 76
    .restart local v6       #_result:[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v7

    .line 78
    goto :goto_0

    .line 71
    .end local v4           #_arg2:Landroid/os/Bundle;
    .end local v5           #_arg3:[Landroid/os/Bundle;
    .end local v6           #_result:[Landroid/os/Bundle;
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
