.class public abstract Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISyncMLServiceCallback.java"

# interfaces
.implements Lcom/android/syncml/service/ISyncMLServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/service/ISyncMLServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/syncml/service/ISyncMLServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.syncml.service.ISyncMLServiceCallback"

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onFinish:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.syncml.service.ISyncMLServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLServiceCallback;
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
    const-string v1, "com.android.syncml.service.ISyncMLServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/syncml/service/ISyncMLServiceCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/syncml/service/ISyncMLServiceCallback;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.android.syncml.service.ISyncMLServiceCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.android.syncml.service.ISyncMLServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 56
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 63
    .local v3, _arg1:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 67
    .local v5, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;->onProgress(JLandroid/net/Uri;III)V

    move v0, v7

    .line 69
    goto :goto_0

    .line 60
    .end local v3           #_arg1:Landroid/net/Uri;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/net/Uri;
    goto :goto_1

    .line 73
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Landroid/net/Uri;
    :sswitch_2
    const-string v0, "com.android.syncml.service.ISyncMLServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 77
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 83
    .restart local v3       #_arg1:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;->onFinish(JLandroid/net/Uri;)V

    move v0, v7

    .line 84
    goto :goto_0

    .line 81
    .end local v3           #_arg1:Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/net/Uri;
    goto :goto_2

    .line 88
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Landroid/net/Uri;
    :sswitch_3
    const-string v0, "com.android.syncml.service.ISyncMLServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 92
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 99
    .restart local v3       #_arg1:Landroid/net/Uri;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/syncml/service/ISyncMLServiceCallback$Stub;->onError(JLandroid/net/Uri;I)V

    move v0, v7

    .line 101
    goto :goto_0

    .line 96
    .end local v3           #_arg1:Landroid/net/Uri;
    .end local v4           #_arg2:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/net/Uri;
    goto :goto_3

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
