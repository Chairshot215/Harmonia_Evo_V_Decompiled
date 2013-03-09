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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p0, p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/clientprofileservice/IClientProfileCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/clientprofileservice/IClientProfileCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->capabilitiesSubmitted(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/clientprofileservice/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/Profile;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->profileRetrieved(Lcom/htc/clientprofileservice/Profile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/clientprofileservice/MyPhonebook;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/MyPhonebook;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->myPhonebookRetrieved(Lcom/htc/clientprofileservice/MyPhonebook;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_4
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lcom/htc/clientprofileservice/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->myGroupsRetrieved(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v4, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/clientprofileservice/Sncdata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/Sncdata;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_6
    const-string v5, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    :goto_5
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->profileModified(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v0, v4

    goto :goto_5

    :sswitch_7
    const-string v5, "com.htc.clientprofileservice.IClientProfileCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->serverNotified(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    goto :goto_6

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
