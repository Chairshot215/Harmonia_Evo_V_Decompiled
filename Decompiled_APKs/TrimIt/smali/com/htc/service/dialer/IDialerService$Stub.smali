.class public abstract Lcom/htc/service/dialer/IDialerService$Stub;
.super Landroid/os/Binder;
.source "IDialerService.java"

# interfaces
.implements Lcom/htc/service/dialer/IDialerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/dialer/IDialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/dialer/IDialerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.dialer.IDialerService"

.field static final TRANSACTION_accessCache:I = 0x2

.field static final TRANSACTION_getCallManagerInfo:I = 0xa

.field static final TRANSACTION_getContactData:I = 0xb

.field static final TRANSACTION_getRingtonePath:I = 0x9

.field static final TRANSACTION_needToHangupCall:I = 0x8

.field static final TRANSACTION_notifyDeleteContact:I = 0x6

.field static final TRANSACTION_notifyInsertCallLog:I = 0x4

.field static final TRANSACTION_notifyInsertContact:I = 0x5

.field static final TRANSACTION_notifyModifyContact:I = 0x7

.field static final TRANSACTION_notifyUpdateCallLog:I = 0x3

.field static final TRANSACTION_updateCache:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/dialer/IDialerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/dialer/IDialerService;
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
    const-string v1, "com.htc.service.dialer.IDialerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/dialer/IDialerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/service/dialer/IDialerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/service/dialer/IDialerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/dialer/IDialerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 57
    .local v3, _arg1:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/htc/service/dialer/IDialerService$Stub;->updateCache(ILandroid/os/Bundle;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    .end local v3           #_arg1:Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/Bundle;
    goto :goto_1

    .line 63
    .end local v1           #_arg0:I
    .end local v3           #_arg1:Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/htc/service/dialer/IDialerService$Stub;->accessCache(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 69
    .local v9, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v9, :cond_1

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 81
    .end local v1           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/htc/service/dialer/IDialerService$Stub;->notifyUpdateCallLog()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :sswitch_4
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 92
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 96
    .local v4, _arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .local v6, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .local v7, _arg4:J
    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v8}, Lcom/htc/service/dialer/IDialerService$Stub;->notifyInsertCallLog(JLjava/lang/String;JIJ)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    .end local v1           #_arg0:J
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:I
    .end local v7           #_arg4:J
    :sswitch_5
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 108
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/htc/service/dialer/IDialerService$Stub;->notifyInsertContact(J)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:J
    :sswitch_6
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 117
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/htc/service/dialer/IDialerService$Stub;->notifyDeleteContact(J)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 123
    .end local v1           #_arg0:J
    :sswitch_7
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 126
    .restart local v1       #_arg0:J
    invoke-virtual {p0, v1, v2}, Lcom/htc/service/dialer/IDialerService$Stub;->notifyModifyContact(J)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 132
    .end local v1           #_arg0:J
    :sswitch_8
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/service/dialer/IDialerService$Stub;->needToHangupCall(Ljava/lang/String;)Z

    move-result v9

    .line 136
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v9, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 142
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_9
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/service/dialer/IDialerService$Stub;->getRingtonePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/service/dialer/IDialerService$Stub;->getCallManagerInfo(Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_b
    const-string v0, "com.htc.service.dialer.IDialerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/service/dialer/IDialerService$Stub;->getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;

    move-result-object v9

    .line 166
    .local v9, _result:Lcom/htc/service/dialer/ContactData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v9, :cond_3

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Lcom/htc/service/dialer/ContactData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

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
