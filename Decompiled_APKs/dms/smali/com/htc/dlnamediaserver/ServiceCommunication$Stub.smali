.class public abstract Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;
.super Landroid/os/Binder;
.source "ServiceCommunication.java"

# interfaces
.implements Lcom/htc/dlnamediaserver/ServiceCommunication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/ServiceCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamediaserver/ServiceCommunication$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dlnamediaserver.ServiceCommunication"

.field static final TRANSACTION_AddSharedFolder:I = 0x5

.field static final TRANSACTION_ClearDatabase:I = 0xc

.field static final TRANSACTION_ForceUpdate:I = 0x8

.field static final TRANSACTION_GetFriendlyName:I = 0x4

.field static final TRANSACTION_GetMediaType:I = 0x2

.field static final TRANSACTION_GetSharedFolder:I = 0x7

.field static final TRANSACTION_IsRunning:I = 0xa

.field static final TRANSACTION_IsUpdating:I = 0x9

.field static final TRANSACTION_RemoveSharedFolder:I = 0x6

.field static final TRANSACTION_Restart:I = 0xb

.field static final TRANSACTION_SetFriendlyName:I = 0x3

.field static final TRANSACTION_SetMediaType:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnamediaserver/ServiceCommunication;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnamediaserver/ServiceCommunication;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/dlnamediaserver/ServiceCommunication;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v6

    .line 51
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v6

    .line 53
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v6

    .line 54
    .local v2, _arg2:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->SetMediaType(ZZZ)Z

    move-result v3

    .line 55
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 57
    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v3           #_result:Z
    :cond_0
    move v0, v7

    .line 49
    goto :goto_1

    .restart local v0       #_arg0:Z
    :cond_1
    move v1, v7

    .line 51
    goto :goto_2

    .restart local v1       #_arg1:Z
    :cond_2
    move v2, v7

    .line 53
    goto :goto_3

    .restart local v2       #_arg2:Z
    .restart local v3       #_result:Z
    :cond_3
    move v5, v7

    .line 56
    goto :goto_4

    .line 61
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v3           #_result:Z
    :sswitch_2
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->GetMediaType()J

    move-result-wide v3

    .line 63
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 65
    goto :goto_0

    .line 69
    .end local v3           #_result:J
    :sswitch_3
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->SetFriendlyName(Ljava/lang/String;)Z

    move-result v3

    .line 73
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v3, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 75
    goto :goto_0

    :cond_4
    move v5, v7

    .line 74
    goto :goto_5

    .line 79
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->GetFriendlyName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 83
    goto :goto_0

    .line 87
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->AddSharedFolder(Ljava/lang/String;)Z

    move-result v3

    .line 91
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v3, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 93
    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 92
    goto :goto_6

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->RemoveSharedFolder(Ljava/lang/String;)Z

    move-result v3

    .line 101
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v3, :cond_6

    move v5, v6

    :goto_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 103
    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 102
    goto :goto_7

    .line 107
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->GetSharedFolder()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 111
    goto/16 :goto_0

    .line 115
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->ForceUpdate()Z

    move-result v3

    .line 117
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v3, :cond_7

    move v5, v6

    :goto_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 119
    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 118
    goto :goto_8

    .line 123
    .end local v3           #_result:Z
    :sswitch_9
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->IsUpdating()Z

    move-result v3

    .line 125
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v3, :cond_8

    move v5, v6

    :goto_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 127
    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 126
    goto :goto_9

    .line 131
    .end local v3           #_result:Z
    :sswitch_a
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->IsRunning()Z

    move-result v3

    .line 133
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v3, :cond_9

    move v5, v6

    :goto_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 135
    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 134
    goto :goto_a

    .line 139
    .end local v3           #_result:Z
    :sswitch_b
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->Restart()Z

    move-result v3

    .line 141
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v3, :cond_a

    move v5, v6

    :goto_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 143
    goto/16 :goto_0

    :cond_a
    move v5, v7

    .line 142
    goto :goto_b

    .line 147
    .end local v3           #_result:Z
    :sswitch_c
    const-string v5, "com.htc.dlnamediaserver.ServiceCommunication"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->ClearDatabase()Z

    move-result v3

    .line 149
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v3, :cond_b

    move v5, v6

    :goto_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 151
    goto/16 :goto_0

    :cond_b
    move v5, v7

    .line 150
    goto :goto_c

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
