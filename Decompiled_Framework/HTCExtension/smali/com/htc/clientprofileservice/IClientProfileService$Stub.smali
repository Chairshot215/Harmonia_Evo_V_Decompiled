.class public abstract Lcom/htc/clientprofileservice/IClientProfileService$Stub;
.super Landroid/os/Binder;
.source "IClientProfileService.java"

# interfaces
.implements Lcom/htc/clientprofileservice/IClientProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clientprofileservice/IClientProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clientprofileservice/IClientProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.clientprofileservice.IClientProfileService"

.field static final TRANSACTION_clearProfileData:I = 0x9

.field static final TRANSACTION_getLastError:I = 0xb

.field static final TRANSACTION_isProfileDataCached:I = 0xa

.field static final TRANSACTION_modifyProfile:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_retrieveMyGroups:I = 0x6

.field static final TRANSACTION_retrieveMyPhonebook:I = 0x5

.field static final TRANSACTION_retrieveProfile:I = 0x4

.field static final TRANSACTION_retrieveSncData:I = 0x7

.field static final TRANSACTION_submitCapabilities:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.clientprofileservice.IClientProfileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/clientprofileservice/IClientProfileService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/clientprofileservice/IClientProfileService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/clientprofileservice/IClientProfileService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->registerCallback(Lcom/htc/clientprofileservice/IClientProfileCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/clientprofileservice/IClientProfileCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->unregisterCallback(Lcom/htc/clientprofileservice/IClientProfileCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->submitCapabilities()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->retrieveProfile(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->retrieveMyPhonebook(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->retrieveMyGroups(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->retrieveSncData(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/clientprofileservice/UserInputData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clientprofileservice/UserInputData;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->modifyProfile(Lcom/htc/clientprofileservice/UserInputData;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_9
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->clearProfileData()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->isProfileDataCached()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "com.htc.clientprofileservice.IClientProfileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/clientprofileservice/IClientProfileService$Stub;->getLastError()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
