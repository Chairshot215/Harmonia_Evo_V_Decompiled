.class public abstract Lcom/htc/omadm/aidl/IDmFutureDial$Stub;
.super Landroid/os/Binder;
.source "IDmFutureDial.java"

# interfaces
.implements Lcom/htc/omadm/aidl/IDmFutureDial;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/aidl/IDmFutureDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/aidl/IDmFutureDial$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.omadm.aidl.IDmFutureDial"

.field static final TRANSACTION_Get_ClientAthData:I = 0x5

.field static final TRANSACTION_Get_ClientAthName:I = 0x9

.field static final TRANSACTION_Get_ClientAthSecret:I = 0x7

.field static final TRANSACTION_Get_ProxyAddress:I = 0x11

.field static final TRANSACTION_Get_ProxyPort:I = 0x13

.field static final TRANSACTION_Get_ServerAdrAddress:I = 0x1

.field static final TRANSACTION_Get_ServerAdrPort:I = 0x3

.field static final TRANSACTION_Get_ServerAthData:I = 0xb

.field static final TRANSACTION_Get_ServerAthName:I = 0xf

.field static final TRANSACTION_Get_ServerAthSecret:I = 0xd

.field static final TRANSACTION_Set_ClientAthData:I = 0x6

.field static final TRANSACTION_Set_ClientAthName:I = 0xa

.field static final TRANSACTION_Set_ClientAthSecret:I = 0x8

.field static final TRANSACTION_Set_ProxyAddress:I = 0x12

.field static final TRANSACTION_Set_ProxyPort:I = 0x14

.field static final TRANSACTION_Set_ServerAdrAddress:I = 0x2

.field static final TRANSACTION_Set_ServerAdrPort:I = 0x4

.field static final TRANSACTION_Set_ServerAthData:I = 0xc

.field static final TRANSACTION_Set_ServerAthName:I = 0x10

.field static final TRANSACTION_Set_ServerAthSecret:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p0, p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/omadm/aidl/IDmFutureDial;
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
    const-string v1, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/omadm/aidl/IDmFutureDial;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/omadm/aidl/IDmFutureDial;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/omadm/aidl/IDmFutureDial$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ServerAdrAddress()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ServerAdrAddress(Ljava/lang/String;)Z

    move-result v1

    .line 59
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ServerAdrPort()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ServerAdrPort(Ljava/lang/String;)Z

    move-result v1

    .line 77
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ClientAthData()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ClientAthData(Ljava/lang/String;)Z

    move-result v1

    .line 95
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_7
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ClientAthSecret()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ClientAthSecret(Ljava/lang/String;)Z

    move-result v1

    .line 113
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_9
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ClientAthName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ClientAthName(Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_b
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ServerAthData()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ServerAthData(Ljava/lang/String;)Z

    move-result v1

    .line 149
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_d
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ServerAthSecret()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ServerAthSecret(Ljava/lang/String;)Z

    move-result v1

    .line 167
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_f
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ServerAthName()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ServerAthName(Ljava/lang/String;)Z

    move-result v1

    .line 185
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_11
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ProxyAddress()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ProxyAddress(Ljava/lang/String;)Z

    move-result v1

    .line 203
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_13
    const-string v2, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Get_ProxyPort()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v4, "com.htc.omadm.aidl.IDmFutureDial"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->Set_ProxyPort(Ljava/lang/String;)Z

    move-result v1

    .line 221
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
