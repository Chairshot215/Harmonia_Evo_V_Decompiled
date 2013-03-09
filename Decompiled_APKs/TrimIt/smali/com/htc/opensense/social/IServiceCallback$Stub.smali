.class public abstract Lcom/htc/opensense/social/IServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IServiceCallback.java"

# interfaces
.implements Lcom/htc/opensense/social/IServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/IServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/IServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.opensense.social.IServiceCallback"

.field static final TRANSACTION_onAlbumsOperationFinish:I = 0x2

.field static final TRANSACTION_onFeedsOperationFinish:I = 0x3

.field static final TRANSACTION_onPeopleOperationFinish:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.opensense.social.IServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/htc/opensense/social/IServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/IServiceCallback;
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
    const-string v1, "com.htc.opensense.social.IServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense/social/IServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/opensense/social/IServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/IServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/opensense/social/IServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.htc.opensense.social.IServiceCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.htc.opensense.social.IServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v4, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense/social/data/Person;

    .line 51
    .local v0, _arg0:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 59
    .local v2, _arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/IServiceCallback$Stub;->onPeopleOperationFinish([Lcom/htc/opensense/social/data/Person;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v2           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_1

    .line 65
    .end local v0           #_arg0:[Lcom/htc/opensense/social/data/Person;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :sswitch_2
    const-string v4, "com.htc.opensense.social.IServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense/social/data/Album;

    .line 69
    .local v0, _arg0:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 77
    .restart local v2       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/IServiceCallback$Stub;->onAlbumsOperationFinish([Lcom/htc/opensense/social/data/Album;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v2           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_2

    .line 83
    .end local v0           #_arg0:[Lcom/htc/opensense/social/data/Album;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :sswitch_3
    const-string v4, "com.htc.opensense.social.IServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    sget-object v4, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense/social/data/Feed;

    .line 87
    .local v0, _arg0:[Lcom/htc/opensense/social/data/Feed;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    sget-object v4, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/RemoteError;

    .line 95
    .restart local v2       #_arg2:Lcom/htc/opensense/social/RemoteError;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/IServiceCallback$Stub;->onFeedsOperationFinish([Lcom/htc/opensense/social/data/Feed;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v2           #_arg2:Lcom/htc/opensense/social/RemoteError;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg2:Lcom/htc/opensense/social/RemoteError;
    goto :goto_3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
