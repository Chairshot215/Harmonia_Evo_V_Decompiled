.class public abstract Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IVMMForOOBEServiceInterface.java"

# interfaces
.implements Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.vmm.service.IVMMForOOBEServiceInterface"

.field static final TRANSACTION_checkEmailAdressSet:I = 0x5

.field static final TRANSACTION_checkSnapshotExist:I = 0xa

.field static final TRANSACTION_checkVMMSubscribe:I = 0x6

.field static final TRANSACTION_getCall1Data:I = 0x3

.field static final TRANSACTION_getPreferenceSettings:I = 0x7

.field static final TRANSACTION_getVmmVerifiedFlag:I = 0x1

.field static final TRANSACTION_setCall2:I = 0x4

.field static final TRANSACTION_setFlagUncheckRestore:I = 0xb

.field static final TRANSACTION_setPreferenceSettings:I = 0x8

.field static final TRANSACTION_setVmmVerifiedFlag:I = 0x2

.field static final TRANSACTION_startRestore:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;
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
    const-string v1, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->getVmmVerifiedFlag()Z

    move-result v1

    .line 49
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 58
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->setVmmVerifiedFlag(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    .line 64
    :sswitch_3
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->getCall1Data()Lcom/htc/vmm/api/newbay/bean/SPGData;

    move-result-object v1

    .line 66
    .local v1, _result:Lcom/htc/vmm/api/newbay/bean/SPGData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v1, p3, v3}, Lcom/htc/vmm/api/newbay/bean/SPGData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v1           #_result:Lcom/htc/vmm/api/newbay/bean/SPGData;
    :sswitch_4
    const-string v2, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    sget-object v2, Lcom/htc/vmm/api/newbay/bean/Price;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/vmm/api/newbay/bean/Price;

    .line 86
    .local v0, _arg0:Lcom/htc/vmm/api/newbay/bean/Price;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->setCall2(Lcom/htc/vmm/api/newbay/bean/Price;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Lcom/htc/vmm/api/newbay/bean/Price;
    .end local v1           #_result:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/vmm/api/newbay/bean/Price;
    goto :goto_2

    .line 93
    .end local v0           #_arg0:Lcom/htc/vmm/api/newbay/bean/Price;
    :sswitch_5
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->checkEmailAdressSet()Z

    move-result v1

    .line 95
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v1           #_result:Z
    :sswitch_6
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->checkVMMSubscribe()Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v1

    .line 103
    .local v1, _result:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_5

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v1, p3, v3}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 109
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v1           #_result:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    :sswitch_7
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->getPreferenceSettings()Lcom/htc/vmm/api/newbay/bean/Settings;

    move-result-object v1

    .line 117
    .local v1, _result:Lcom/htc/vmm/api/newbay/bean/Settings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v1, :cond_6

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v1, p3, v3}, Lcom/htc/vmm/api/newbay/bean/Settings;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v1           #_result:Lcom/htc/vmm/api/newbay/bean/Settings;
    :sswitch_8
    const-string v2, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 132
    sget-object v2, Lcom/htc/vmm/api/newbay/bean/Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/vmm/api/newbay/bean/Settings;

    .line 137
    .local v0, _arg0:Lcom/htc/vmm/api/newbay/bean/Settings;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->setPreferenceSettings(Lcom/htc/vmm/api/newbay/bean/Settings;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Lcom/htc/vmm/api/newbay/bean/Settings;
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/vmm/api/newbay/bean/Settings;
    goto :goto_3

    .line 143
    .end local v0           #_arg0:Lcom/htc/vmm/api/newbay/bean/Settings;
    :sswitch_9
    const-string v2, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->startRestore()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    :sswitch_a
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->checkSnapshotExist()Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v1

    .line 152
    .local v1, _result:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v1, :cond_8

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v1, p3, v3}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 158
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v1           #_result:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    :sswitch_b
    const-string v4, "com.htc.vmm.service.IVMMForOOBEServiceInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v0, v3

    .line 167
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->setFlagUncheckRestore(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_9
    move v0, v2

    .line 166
    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
