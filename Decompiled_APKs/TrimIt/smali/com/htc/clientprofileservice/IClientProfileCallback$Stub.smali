.class public abstract Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;
.super Landroid/os/Binder;
.source "IClientProfileCallback.java"

# interfaces
.implements Lcom/htc/clientprofileservice/IClientProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clientprofileservice/IClientProfileCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clientprofileservice/IClientProfileCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.clientprofileservice.IClientProfileCallback"

.field static final TRANSACTION_capabilitiesSubmitted:I = 0x1

.field static final TRANSACTION_myGroupsRetrieved:I = 0x4

.field static final TRANSACTION_myPhonebookRetrieved:I = 0x3

.field static final TRANSACTION_profileModified:I = 0x6

.field static final TRANSACTION_profileRetrieved:I = 0x2

.field static final TRANSACTION_serverNotified:I = 0x7

.field static final TRANSACTION_sncdataRetrieved:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p0, p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileCallback;
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
    const-string v1, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/clientprofileservice/IClientProfileCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/clientprofileservice/IClientProfileCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 50
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->capabilitiesSubmitted(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v4

    .line 49
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    sget-object v4, Lcom/htc/clientprofileservice/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/Profile;

    .line 64
    .local v0, _arg0:Lcom/htc/clientprofileservice/Profile;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->profileRetrieved(Lcom/htc/clientprofileservice/Profile;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Lcom/htc/clientprofileservice/Profile;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/clientprofileservice/Profile;
    goto :goto_2

    .line 70
    .end local v0           #_arg0:Lcom/htc/clientprofileservice/Profile;
    :sswitch_3
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    sget-object v4, Lcom/htc/clientprofileservice/MyPhonebook;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/MyPhonebook;

    .line 78
    .local v0, _arg0:Lcom/htc/clientprofileservice/MyPhonebook;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->myPhonebookRetrieved(Lcom/htc/clientprofileservice/MyPhonebook;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Lcom/htc/clientprofileservice/MyPhonebook;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/clientprofileservice/MyPhonebook;
    goto :goto_3

    .line 84
    .end local v0           #_arg0:Lcom/htc/clientprofileservice/MyPhonebook;
    :sswitch_4
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    sget-object v4, Lcom/htc/clientprofileservice/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    invoke-virtual {p0, v1}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->myGroupsRetrieved(Ljava/util/List;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    :sswitch_5
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    sget-object v4, Lcom/htc/clientprofileservice/Sncdata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/Sncdata;

    .line 101
    .local v0, _arg0:Lcom/htc/clientprofileservice/Sncdata;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:Lcom/htc/clientprofileservice/Sncdata;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/clientprofileservice/Sncdata;
    goto :goto_4

    .line 107
    .end local v0           #_arg0:Lcom/htc/clientprofileservice/Sncdata;
    :sswitch_6
    const-string v5, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 110
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->profileModified(Z)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v4

    .line 109
    goto :goto_5

    .line 116
    :sswitch_7
    const-string v5, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    .line 121
    .local v2, _arg1:Z
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->serverNotified(IZ)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_5
    move v2, v4

    .line 120
    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
